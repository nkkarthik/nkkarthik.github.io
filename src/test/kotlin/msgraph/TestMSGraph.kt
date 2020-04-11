package msgraph


import msgraph.ClientCredentialProvider
import com.microsoft.graph.requests.extensions.GraphServiceClient
import kotlin.test.Ignore
import kotlin.test.Test


//class MSAuthProvider : IAuthenticationProvider {
//    override fun authenticateRequest(request: IHttpRequest) {
//        TODO("Not yet implemented")
//    }
//}

enum class NationalCloud {
    Global, China, Germany, UsGovernment
}

class TestMSGraph {
    @Test
    @Ignore
    fun readUserGroups() {

        // common
        val clientId = "57682dea-2f73-4cce-aa0d-57163a0fdc73"
        val nationalCloud = null
        val clientSecret = "6hUcjdt?Jz93g3gWekyl-F==evI:85aH"
        val tenantId = "43083d15-7273-40c1-b7db-39efd9ccc17a"

//        val redirectUrl = ""
//        val authCode = ""
//        val tenant = ""
//        val authorizationCodeProvider =
//                AuthorizationCodeProvider(clientId, scopes, authCode, redirectUrl, nationalCloud, tenant, clientSecret)

        val scopes = listOf<String>(
                // An example set of scopes your application could use
//                "https://graph.microsoft.com/Calendars.ReadWrite",
//                "https://graph.microsoft.com/Contacts.ReadWrite",
//                "https://graph.microsoft.com/Files.ReadWrite",
//                "https://graph.microsoft.com/Mail.ReadWrite",
//                "https://graph.microsoft.com/Mail.Send",
//                "https://graph.microsoft.com/User.ReadBasic.All",
//                "https://graph.microsoft.com/User.ReadWrite",
                "offline_access",
                "openid"
        )

        val clientCredentialProvider =
                ClientCredentialProvider(
                        clientId, scopes, clientSecret, tenantId)

//        val authProvider = UsernamePasswordProvider(clientId, scopes, USERNAME, PASSWORD, NATIONAL_CLOUD, TENANT, clientSecret)

        val graphClient = GraphServiceClient
                .builder()
                .authenticationProvider(
                        clientCredentialProvider)
                .buildClient()

        graphClient
                .me()
                .buildRequest()
                .get();

        println("om")
    }
}



object AuthConstants {
    const val BEARER = "Bearer "
    const val TOKEN_ENDPOINT = "/oauth2/v2.0/token"
    const val AUTHORIZATION_HEADER = "Authorization"

    object Tenants {
        const val Common = "common"
        const val Organizations = "organizations"
        const val Consumers = "consumers"
    }
}


//class UsernamePasswordProvider @JvmOverloads constructor(
//        clientId: String?,
//        scopes: List<String?>?,
//        private val Username: String,
//        private val Password: String,
//        nationalCloud: NationalCloud? = NationalCloud.Global,
//        tenant: String? = AuthConstants.Tenants.Organizations,
//        clientSecret: String? = null) : BaseAuthentication(scopes,
//        clientId,
//        GetAuthority(nationalCloud ?: NationalCloud.Global, tenant ?: AuthConstants.Tenants.Organizations),
//        null,
//        nationalCloud ?: NationalCloud.Global,
//        tenant,
//        clientSecret), IAuthenticationProvider {
//    fun authenticateRequest(request: HttpRequest) {
//        var accessToken = accessTokenSilent
//        if (accessToken == null) {
//            try {
//                val authRequest = tokenRequestMessage
//                accessToken = getAccessTokenNewRequest(authRequest)
//            } catch (e: java.lang.Exception) {
//                e.printStackTrace()
//            }
//        }
//        request.addHeader("Authorization", AuthConstants.BEARER + accessToken)
//    }
//
//    @get:Throws(OAuthSystemException::class)
//    val tokenRequestMessage: OAuthClientRequest
//        get() {
//            val tokenUrl = authority + AuthConstants.TOKEN_ENDPOINT
//            val token = OAuthClientRequest.tokenLocation(tokenUrl)
//                    .setClientId(clientId)
//                    .setUsername(Username)
//                    .setPassword(Password)
//                    .setGrantType(GrantType.PASSWORD)
//                    .setScope(scopesAsString)
//            if (clientSecret != null) {
//                token.setClientSecret(clientSecret)
//            }
//            return token.buildBodyMessage()
//        }
//
//    @Throws(OAuthSystemException::class, OAuthProblemException::class)
//    fun getAccessTokenNewRequest(request: OAuthClientRequest?): String {
//        val oAuthClient = OAuthClient(URLConnectionClient())
//        startTime = System.currentTimeMillis()
//        response = oAuthClient.accessToken(request)
//        return response.accessToken
//    }
//
//}
