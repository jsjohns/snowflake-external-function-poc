import orjson


def times_two(n: int):
    return n * 2


def handle_row(args):
    return times_two(args[0])


def handler(event, _):
    output = []
    try:
        rows = orjson.loads(event["body"])["data"]
        print(f'Batch size: {len(rows)}')
        for row in rows:
            num, args = row[0], row[1:]
            output.append([row[0], handle_row(args)])
    except Exception as e:
        return {'statusCode': 400, 'body': str(e)}
    return {'statusCode': 200, 'body': orjson.dumps({"data": output})}
