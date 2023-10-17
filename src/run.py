import investec_python

if __name__ == "__main__":
    investec = investec_python.Investec(use_sandbox=True)
    accounts = investec.accounts.list()
    print(accounts)
