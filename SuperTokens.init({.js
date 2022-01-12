SuperTokens.init({
    // appInfo: {...},
    recipeList: [
        ThirdPartyEmailPassword.init({
            override: {
                components: {

                    EmailPasswordSignInHeader: ({ onClick }) => {

                        return ( <
                            Box >
                            <
                            Typography variant = "h5" >
                            Zaloguj się <
                            /Typography> <
                            Typography variant = "subtitle1" >
                            lub przejdź do <Link href = "/rejestracja"
                            onClick = {
                                (e) => {
                                    e.preventDefault()
                                    onClick()
                                }
                            } >
                            rejestracji < /Link> < /
                            Typography > <
                            Box mt = { 1 }
                            mb = { 2 } >
                            <
                            Divider / >

                            <
                            /Box> < /
                            Box >
                        )
                    }
                }
            }
        })
    ]
});