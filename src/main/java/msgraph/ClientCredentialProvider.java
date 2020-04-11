package msgraph;

import com.microsoft.graph.authentication.IAuthenticationProvider;
import com.microsoft.graph.http.IHttpRequest;
import org.apache.oltu.oauth2.client.OAuthClient;
import org.apache.oltu.oauth2.client.URLConnectionClient;
import org.apache.oltu.oauth2.client.request.OAuthClientRequest;
import org.apache.oltu.oauth2.common.exception.OAuthProblemException;
import org.apache.oltu.oauth2.common.exception.OAuthSystemException;
import org.apache.oltu.oauth2.common.message.types.GrantType;

import java.util.List;

class AuthConstants {
    public static class Tenants
    {
        public static final String Common = "common";
        public static final String Organizations = "organizations";
        public static final String Consumers = "consumers";
    }
    public static final String BEARER = "Bearer ";
    public static final String TOKEN_ENDPOINT = "/oauth2/v2.0/token";
    public static final String AUTHORIZATION_HEADER = "Authorization";
}

public class ClientCredentialProvider extends BaseAuthentication implements IAuthenticationProvider {

    /*
     * Client credential provider instance using client secret
     *
     * @param clientId Client ID of application
     * @param scopes Scopes that application need to access protected resources
     * @param clientSecret Client secret of application
     * @param tenant The tenant GUID or friendly name format or common
     *
     */
    public ClientCredentialProvider(String clientId,
                                    List<String> scopes,
                                    String clientSecret,
                                    String tenant) {
        super(	scopes,
                clientId,
                GetAuthority(NationalCloud.Global, tenant),
                null,
                NationalCloud.Global,
                tenant,
                clientSecret);
    }

    /*
     * Create the token request message
     *
     * @return The token request message
     */
    OAuthClientRequest getTokenRequestMessage() throws OAuthSystemException {
        String tokenUrl = getAuthority() + AuthConstants.TOKEN_ENDPOINT;
        OAuthClientRequest.TokenRequestBuilder token = OAuthClientRequest.
                tokenLocation(tokenUrl)
                .setClientId(getClientId())
                .setGrantType(GrantType.CLIENT_CREDENTIALS)
                .setScope(getScopesAsString());
        if(getClientSecret() != null) {
            token.setClientSecret(getClientSecret());
        }
        return token.buildBodyMessage();
    }

    /*
     * Call using request to get response containing access token
     *
     * @param request The request to execute
     * @return The access token in response
     */
    String getAccessTokenNewRequest(OAuthClientRequest request) throws OAuthSystemException, OAuthProblemException {
        OAuthClient oAuthClient = new OAuthClient(new URLConnectionClient());
        setStartTime(System.currentTimeMillis());
        setResponse(oAuthClient.accessToken(request));
        return getResponse().getAccessToken();
    }

    @Override
    public void authenticateRequest(IHttpRequest request) {
        try {
            String accessToken = null;
            long duration = System.currentTimeMillis() - getStartTime();
            if(getResponse()!=null && duration>0 && duration< getResponse().getExpiresIn()*1000) {
                accessToken = getResponse().getAccessToken();
            } else {
                OAuthClientRequest authRequest = getTokenRequestMessage();
                accessToken = getAccessTokenNewRequest(authRequest);
            }
            request.addHeader(AuthConstants.AUTHORIZATION_HEADER, AuthConstants.BEARER + accessToken);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

