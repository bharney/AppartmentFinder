defmodule SpendingMoney.Tweet do
    def send(str) do
        ExTwitter.configure(:process, [
            consumer_key: System.get_env
            ("SPENDING_MONEY_CONSUMER_KEY"),
            consumer_secret: System.get_env
            ("SPENDING_MONEY_CONSUMER_SECRET"),
            access_token: System.get_env
            ("SPENDING_MONEY_ACCESS_TOKEN"),
            access_token_secret: System.get_env
            ("SPENDING_MONEY_ACCESS_SECRET")
        ])

        ExTwitter.update(str)
    end
end