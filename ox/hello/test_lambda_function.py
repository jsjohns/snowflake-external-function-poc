from ox.hello import lambda_function


def test_lambda_function():
    lambda_function.handler({}, {})
    assert True
