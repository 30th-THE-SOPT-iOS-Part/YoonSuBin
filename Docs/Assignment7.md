# 7์ฃผ์ฐจ ๊ณผ์  ๐ซ

## 1๏ธโฃ ๊ธฐ๋ณธ๊ณผ์  : ์๋ฒํต์  URLSession, Alamofire, Moya ๋น๊ตํ๊ธฐ

iOS์์๋ ์๋ฒ์ ํต์ ํ๊ธฐ ์ํด ๊ธฐ๋ณธ์ ์ผ๋ก Foundation์ `URLSession`์ด๋ผ๋ API๋ฅผ ์ฌ์ฉํ๊ณ  ์๋ค. `URLSession`์ ๋ก์ฐ๋ ๋ฒจ์ ์ฝ๋๋ฅผ ์์ฑํ  ์ ์๊ณ , ๋ค๋ฅธ ํ๋ ์์ํฌ๋ฅผ ์ฌ์ฉํ  ํ์๊ฐ ์๋ค๋ ์ฅ์ ์ด ์์ง๋ง ์ฌ์ฉ์ด ๋ณต์กํ๊ณ  ์ฝ๋์ ๊ฐ๋์ฑ์ด ์ข์ง ์๋ค๋ ๋จ์ ์ด ์๋ค.

๋ฐ๋ผ์ `URLSession`์ ๊ธฐ๋ฐ์ผ๋ก ํ ๋จ๊ณ ์ถ์ํ์ํจ ๋ฐฉ์์ผ๋ก ํ๋คํธ์ํน ์์์ ๋จ์ํํด์ฃผ๋ ๋ผ์ด๋ธ๋ฌ๋ฆฌ์ธ `Alamofire` ๋ผ์ด๋ธ๋ฌ๋ฆฌ๋ฅผ ๋ณดํธ์ ์ผ๋ก ์ฌ์ฉํ๋ค. ํ์ง๋ง `Alamofire`๋ ์ ์ง ๋ณด์์ ์ ๋ ํ์คํธ๊ฐ ํ๋ค๋ค๋ ๋จ์ ์ ๊ฐ์ง๊ณ  ์๋ค.

์ด๋ `URLSession`์ ์ถ์ํํ `Alamofire`๋ฅผ ๋ค์ ์ถ์ํํ ํ๋ ์์ํฌ๋ก NetWork Layer๋ฅผ ํํ๋ฆฟํ ํด์ ์ฌ์ฌ์ฉ์ฑ์ ๋ํ๊ณ , ํ์คํธ๊ฐ ์ฉ์ดํ๋ฉฐ ๊ฐ๋ฐ์๊ฐ request,response์๋ง ์ ๊ฒฝ์ฐ๋๋ก ํด์ค ๊ฒ์ด ๋ฐ๋ก `Moya`๋ผ์ด๋ธ๋ฌ๋ฆฌ์ด๋ค.

iOS ์๋ฒํต์ ์ ์์ฃผ ์ฌ์ฉ๋๋ `URLSession`, `Alamofire`, `Moya`์ ๋ํด ๊ฐ๋จํ ๋น๊ตํด๋ณด๋๋ก ํ์.

<br>

> **์ฐธ๊ณ ๐ก** ์ถ์ํ๋?
> 
> : ๊ฐ์ฒด๋ค์ ๊ณตํต๋ ๋ถ๋ถ๋ง ๋ฐ๋ก ๋ฝ์, ์ฌ์ฌ์ฉ์ ํ๊ธฐ ์ฝ๋๋ก ๊ตฌํํ๋ ๊ฒ์ ๋ปํ๋ค. (์ฝ๊ฒ ๋งํด ์ผ๋ฐํ์ํค๋ ๊ฒ)
> 
> **์ถ์ํ์ ์ฅ์ ** : ๋ชจ๋ธ๋ง, ์ฝ๋์ ์ฌ์ฌ์ฉ์ฑ, ์ฝ๋์ ๊ฐ๋์ฑ, ์ผ๊ด๋ ๋ฐฉํฅ์ฑ ๋ฑ์ด ๊ณตํต์ ์ผ๋ก ์ธ๊ธ์ด ๋๋ค.
> 
> ๋ชจ๋ธ๋ง์ ํตํด ์ฝ๋๋ฅผ ์ถ์ํํ๋ฉด ์ฝ๋์ ์ฌ์ฌ์ฉ์ฑ์ ๋์ผ ์ ์๊ณ , ์ฝ๋์ ๊ฐ๋์ฑ์ ๋์ฌ ์ฝ๋๋ฅผ ์ดํดํ๊ธฐ ํจ์ฌ ๋ ์ฝ๊ฒ ๋ง๋ค์ด ์ฃผ๊ธฐ๋ ํ๋ค. ๊ทธ๋ฆฌ๊ณ  ์ถ์ํ๋ ์ฝ๋๋ ์์ฐ์ค๋ฝ๊ฒ ์ผ๊ด์ฑ์ ๊ฐ์ง๊ฒ ๋๋ค.

<br>

---

### ์ ๊น! HTTP, REST, ๊ทธ๋ฆฌ๊ณ  JSON์ ๋ํด ๊ฐ๋ฝํ ์๊ณ  ๋์ด๊ฐ์๐

<br>

**HTTP**๋ ์๋ฒ์์ ํด๋ผ์ด์ธํธ๋ก ๋ฐ์ดํฐ๋ฅผ ์ ์กํ  ๋ ์ฌ์ฉํ๋ Application Protocol์ด๋ค. HTTP๋ ์๋์ ๊ฐ์ด ๋ค์ํ request method๋ฅผ ์ ์ํ์ฌ ๋ฐ๋์งํ ๋์๋ค์ ๊ฐ๋ฆฌํฌ ์ ์๊ฒ ํ๋ค.

- **GET**: ๋ฐ์ดํฐ๋ฅผ ๋ฐ๋๋ค. (์๋ฒ์ ๋ฐ์ดํฐ๋ฅผ ๋ณ๊ฒฝํ  ์๋ ์๋ค.)
- **HEAD**: GET๊ณผ ๋น์ทํ์ง๋ง, ์ง์ง ๋ฐ์ดํฐ๊ฐ ์๋ header๋ง ์ ๋ฌํ๋ค.
- **POST**: ๋ฐ์ดํฐ๋ฅผ ์๋ฒ์ ์ ์กํ๋ค. (ex. form์ ์ฑ์ฐ๊ฑฐ๋ submit ๋ฒํผ์ ๋๋ฅผ ๋ ๋ฑ)
- **PUT**: ๋ฐ์ดํฐ๋ฅผ ํน์ ํ ์ฅ์์ ์ ์กํ๋ค. (ex. user profile ์๋ฐ์ดํธ ๋ฑ)
- **DELETE**: ํน์  ์ฅ์์ ๋ฐ์ดํฐ๋ฅผ ์ญ์ ํ๋ค.

<br>

**JSON**์ JavaScript Object Notation์ ์ฝ์๋ก, ์์คํ ๊ฐ ๋ฐ์ดํฐ ์ ๋ฌ์ ์์ด ์ง๊ด์ ์ด๊ณ  ์ฌ๋์ด ์ฝ์ ์ ์๋ ๋ฉ์ปค๋์ฆ์ ์ ๊ณตํ๋ค. JSON์ string, boolean, array, object/dictionary, number, null๊ณผ ๊ฐ์ด ํ์ ๋ ์์ ๋ฐ์ดํฐ ํ์๋ง ๊ฐ์ง ์ ์๋ค.

Swift4 ์ ์๋ JSON์์ data object๋ก, ๋ ๊ทธ ๋ฐ๋๋ก ๋ณํํ๊ธฐ ์ํด JSONSerialization ํด๋์ค๋ฅผ ์ฌ์ฉํด์ผ ํ๋๋ฐ, ์์ฆ์ Codable ํ๋กํ ์ฝ์ ์ฑํํด JSON๊ณผ data model ์ฌ์ด ์๋ํ ๋ณํ์ ์ด์ฉํ๋ค.

<br>

**REST**๋ REpresentational State Transfer์ ์ฝ์๋ก, ์ง์์ ์ธ ์น API๋ฅผ ๋ง๋ค๊ธฐ ์ํ ๊ท์น์ ์งํฉ์ด๋ค. REST๋ request ์ฌ์ด์ ์ํ๋ฅผ ์ง์ํ์ง ์๊ฑฐ๋, cacheable request๋ฅผ ๋ง๋ค๊ณ , ๋์ผํ ์ธํฐํ์ด์ค๋ฅผ ์ ๊ณตํ๋ค. ์ด๋ฅผ ํตํด request๊ฐ ๋ฐ์ดํฐ์ ์ํ๋ฅผ ์ถ์ ํ์ง ์๊ณ ๋ API๋ฅผ ์ฐ๋ฆฌ๊ฐ ๋ง๋  ์ฑ์ ํตํฉํ๋ ๊ฒ์ ์ฝ๊ฒํ  ์ ์๋๋ก ํ๋ค.

---

## 1. URLSession

- URLSession์ HTTP/HTTPS๋ฅผ ํตํด ์ฝํ์ธ  ๋ฐ ๋ฐ์ดํฐ๋ฅผ ์ฃผ๊ณ ๋ฐ๊ธฐ ์ํด API๋ฅผ ์ ๊ณตํ๋ ํด๋์ค ๋ฐ ํด๋์ค ๋ชจ์์ด๋ค.

```swift
class URLSession : NSObject
```

> An object that coordinates a group of related, network data transfer tasks.

<img src="https://koenig-media.raywenderlich.com/uploads/2019/05/02-URLSession-Diagram.png">

`URLSession` : HTTP ์์ฒญ์ ๋ณด๋ด๊ณ  ๋ฐ๋ ํต์ฌ ๊ฐ์ฒด์ด๋ค. ์ ๊ณต๋๋ `URLSessionConfiguration`์ ํตํด ๋ค์ ์ธ ๊ฐ์ง ์ ํ์ URL์ ์์ฑํ๋ค.

- `.default`: ๊ธฐ๋ณธ ๋คํธ์ํฌ ํต์ 
- `.ephemeral`: ์ฟ ํค๋ ์บ์๋ฅผ ์ ์ฅํ์ง ์๊ฒ ํ  ๋ ์ฌ์ฉ (private ๋ชจ๋์ ๋น์ทํ๋ค)
- `.background`: ์ฑ์ด ๋ฐฑ๊ทธ๋ผ์ด๋์ ์์ ๋ ์ฌ์ฉ (์ปจํ์ธ  ๋ค์ด๋ก๋ ํน์ ์๋ก๋ ๋ฑ)

`URLSession` ์ฌ๋ฌ๊ฐ๋ก `URLSessionTask`๋ฅผ ๋ง๋ค ์ ์๋ค. ์ด `URLSessionTask`๋ก ์ค์  ํต์ ์ ํ๊ฒ ๋๋ค. `URLSessionTask`๋ ์ธ ๊ฐ์ง ์ ํ์ผ๋ก ๋ถ๋ฅํ  ์ ์๋ค.

- `URLSessionDataTask` : ๊ฐ๋จํ ๋ฐ์ดํฐ๋ฅผ ๋ฐ์์ฌ ๋ ์ฌ์ฉ (๋ฐฑ๊ทธ๋ผ์ด๋์์ ์งํ์ ์ ๋จ)
- `URLSessionUploadTask` : ๋ฐ์ดํฐ๋ฅผ ์๋ก๋ํ  ๋ ์ฌ์ฉ
- `URLSessionDownloadTask` : ๋ฐ์ดํฐ๋ฅผ ๋ค์ด๋๋ฅด ํ  ๋ ์ฌ์ฉ

`URLSession Delegate`์ ํตํด์ ๋คํธ์ํฌ ์ค๊ฐ๊ณผ์ ์ ํ์ธํ  ์ ์๋ค. (ํ์๋ ์๋)

<br>

> URLSession ์ค์ต

```swift
let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

var urlComponents = URLComponents(string: "https://itunes.apple.com/search?media=music&entity=song&term=IU")!
let requestURL = urlComponents.url!
```

์์ ์ฝ๋๋ฅผ ํตํด URLConfiguration์ ๊ฐ์ฒด๋ฅผ ์์ฑํ๊ณ  ์ด๋ฅผ ํตํด URLSession์ ์์ฑํ ๊ฒ์ ํ์ธํ  ์ ์๋ค.

์์ requestURL์๋ ์๋์ ๊ฐ์ด 50๊ฑด์ IU๋์ ๊ณก์ ๋ํ ์ ๋ณด๊ฐ ๋์์๋ค.

<img src="https://velog.velcdn.com/images%2Ffolw159%2Fpost%2Fc09ab833-ac1b-4dd4-9f08-4200e521b240%2Fimage.png">

์ฌ๊ธฐ์ ์ํ๋ ์ ๋ณด๋ง์ ๋ฝ์๋ด๊ธฐ ์ํด **Codable** ํ๋กํ ์ฝ์ ์ฑํํ ๊ตฌ์กฐ์ฒด๋ฅผ ์์ฑํ๋ค. 

```swift
struct Response: Codable {
    let resultCount: Int
    let tracks: [Track]
    
    enum CodingKeys: String, CodingKey {
        case resultCount
        case tracks = "results"
    }
}

struct Track: Codable {
    let title: String
    let artistName: String
    
    enum CodingKeys: String, CodingKey {
        case title = "trackName"
        case artistName
    }
```

๊ทธ๋ฆฌ๊ณ  DataTask๋ฅผ ์์ฑํ์ฌ ๋ฐ์ดํฐ๋ฅผ ๊ฐ์ ธ์จ๋ค.

```swift
// data task ์์ฑ
let dataTask = session.dataTask(with: requestURL) { (data, response, error) in

    guard error == nil else {
        return
    }
    
    // HTTP ์๋ต ์ฌ๋ถ ํ์ธ
    guard let statusCode = (response as? HTTPURLResponse)?.statusCode else {
        return
    }
    
    // HTTP ์๋ต ์ฑ๊ณต ๋ฒ์
    let successRange = 200..<300
    
    guard successRange.contains(statusCode) else {
        return
    }
    
    // ๋คํธ์ํฌ๋ฅผ ํตํด ๋ฐ์ ๋ฐ์ดํฐ๋ฅผ resultData์ ์ ์ฅ
    guard let resultData = data else { return }
    
    // ๋ฐ์ดํฐ ํ์ฑ ๋ฐ ๊ฒฐ๊ณผ ์ถ๋ ฅ
    do {
        let decoder = JSONDecoder()
        let response = try decoder.decode(Response.self, from: resultData)
        let tracks = response.tracks
        
        print("--> tracks: \(tracks)")
    } catch let error {
        print("---> error: \(error.localizedDescription)")
    }
}

dataTask.resume()
```

์์ ์ฝ๋๋ฅผ ์คํํ๋ฉด ์๋์ ๊ฐ์ด ๊ณก ์ ๋ชฉ, ๊ฐ์๋ง 50๊ฑด์ด ์ถ๋ ฅ๋๋ค.

```
--> tracks: [__lldb_expr_31.Track(title: "YOU & I", artistName: "IU"),
...
]
```

<br>

---

## 2. Alamofire

Alamore๋ ๋น๋๊ธฐ๋ก ์ํํ๋ Swift ๊ธฐ๋ฐ์ HTTP ๋คํธ์ํน ๋ผ์ด๋ธ๋ฌ๋ฆฌ์ด๋ค.

Alamofire๋ URLSession ๊ธฐ๋ฐ์ด๋ฉฐ,URLSession ๋ฐ URLSessionTask ๊ฐ์ ํด๋์ค๋ฅผ ์ฌ์ฉํ๊ธฐ ์ฝ๊ฒ ๊ตฌํ๋์ด ์๋ค. 

- Alamofire๋ CocoaPods๋ฅผ ์ฌ์ฉํด ์ฝ๊ฒ ์ค์น ๊ฐ๋ฅํ๋ค.

```swift
pod 'Alamofire', '~> 5.2' // 5.2 version
```

cf. ์ค์นํ ๋ผ์ด๋ธ๋ฌ๋ฆฌ๋ฅผ ์ถ๊ฐํ  ๋ : `import Alamofire`

<br>

์ ๊ณต๋๋ ๋ํ ๊ธฐ๋ฅ์ผ๋ก๋ ์๋์ ๊ฐ๋ค.

- `AF.upload` : ๋ฉํฐํํธ, ์คํธ๋ฆผ, ํ์ผ๋ฉ์๋๋ฅผ ํตํด ํ์ผ์ ์๋ก๋ํ๋ค.
- `AF.download` : ํ์ผ์ ๋ค์ด๋ก๋ํ๊ฑฐ๋ ์ด๋ฏธ ์งํ ์ค์ธ ๋ค์ด๋ก๋๋ฅผ ์ฌ๊ฐํ๋ค.
- `AF.request` : ํ์ผ ์ ์ก๊ณผ ๋ฌด๊ดํ ๋ค๋ฅธ HTTP๋ฅผ ์์ฒญํ๋ค.

> ์ธ์คํ๊ทธ๋จ ํด๋ก  ๊ณผ์  ํ์๊ฐ์ ๋ถ๋ถ ์์

```swift
        let dataRequest = AF.request(url,
                                     method: .post,
                                     parameters: body,
                                     encoding: JSONEncoding.default,
                                     headers: header)

        dataRequest.responseData { dataResponse in
            switch dataResponse.result {
            case .success:
                guard let statusCode = dataResponse.response?.statusCode else { return }
                guard let value = dataResponse.value else { return }

                let networkResult = NetworkHelper.parseJSON(by: statusCode, data: value, type: SignUpResponse.self)
                completion(networkResult)

            case .failure(let err):
                print(err)
                completion(.networkFail)
            }
        }
```

<br>

---

## 3. Moya

Moya๋ URLSession์ ์ถ์ํํ Alamofire๋ฅผ, ๋ค์ ์ถ์ํํ ๋ผ์ด๋ธ๋ฌ๋ฆฌ๋ก Network Layer๋ฅผ ํํ๋ฆฟ์ผ๋ก ๋ง๋ค์ด ์ฌ์ฌ์ฉ์ฑ์ ๋์ด๊ณ  ๊ฐ๋ฐ์๊ฐ request, response์๋ง ์ง์คํ  ์ ์๋๋ก ์ค๊ณํ ๋ผ์ด๋ธ๋ฌ๋ฆฌ์ด๋ค.

Moya ๊ณต์๋ฌธ์์ ์๋ ๋๋ก ์์๋ฅผ ์ ๋ฆฌํด๋ณด๋๋ก ํ์.

<br>

### 1. Service.swift ํ์ผ์ ๋ง๋ ๋ค.

๊ฐ case๋ ๊ฐ๋ณ์ ์ธ ๋คํธ์ํฌ๋ฅผ ๋ด๋นํ๊ฒ ๋๋ค. ํ๋ผ๋ฏธํฐ๋ ๊ฐ๋ณ API ๋ฌธ์๋ฅผ ๋ณด๊ณ  ํ์ํ ๊ฒฝ์ฐ์ ๋ฐ๋ผ ํน์ ๋ก์ง์ ๋ฐ๋ผ์ ๋ง๋ ๋ค.

```swift
enum CardService {
    case cardDetailFetch(cardID: String)
    case cardCreation(request: CardCreationRequest, image: UIImage)
    case cardListEdit(request: CardListEditRequest)
    case cardDelete(cardID: String)
}
```

<br>

### 2. extension์ ํตํด TargetTypeํ๋กํ ์ฝ์ ์ถ๊ฐ๋ก ์ค์ํ๋๋ก ํ๊ณ , ํ์ํ ์์ฑ์ Service.swift ์ ์ถ๊ฐ๋ก ๊ตฌํํ๋ค.

TargetType ํ๋กํ ์ฝ์ ์ฑํํ๋ ์ด์ ๋ ์๋์ ๊ฐ์ด ๋ค์ํ ๋คํธ์ํน ์์ฑ์ ์ ๊ณตํ๊ธฐ ๋๋ฌธ์ธ๋ฐ, ์๋์ ๊ฐ์ ๋คํธ์ํน ์์ฑ์ ๊ฐ์ง๋ค.

- baseURL : ์๋ฒ์ base URL
- path : ์๋ฒ์ base URL ๋ค์ ์ถ๊ฐ๋  Path
- method : HTTP Method (GET, POST, PUT, DELETE ๋ฑ...)
- task : request์ ์ฌ์ฉ๋๋ ํ๋ผ๋ฏธํฐ ์ค์ 
- sampleData : ํ์คํธ์ฉ Mock Data (ํ์คํธ๋ฅผ ์ํ ๋ชฉ์ ๋ฐ์ดํฐ๋ฅผ ์ ๊ณตํ  ๋ ์ฌ์ฉ)
- validationType : ํ์ฉํ  response์ ํ์
- headers : HTTP headers


```swift
extension CardService: TargetType {
    
    var baseURL: URL { return URL(string: Const.URL.baseURL)! }
    
    var path: String {
        switch self {
        case .cardDetailFetch(let cardID):
            return "/card/\\(cardID)"
        case .cardCreation:
            return "/card"
        case .cardListEdit:
            return "/cards"
        case .cardDelete(let cardID):
            return "/card/\\(cardID)"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .cardDetailFetch:
            return .get
        case .cardCreation:
            return .post
        case .cardListEdit:
            return .put
        case .cardDelete:
            return .delete
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .cardDetailFetch, .cardDelete:
            return .requestPlain
        case .cardCreation(let request, let image):
            
            var multiPartData: [Moya.MultipartFormData] = []
            
            let userIDData = request.userID.data(using: .utf8) ?? Data()
            multiPartData.append(MultipartFormData(provider: .data(userIDData), name: "card.userId"))
            let defaultImageData = Int(request.frontCard.defaultImage).description.data(using: .utf8) ?? Data()
            multiPartData.append(MultipartFormData(provider: .data(defaultImageData), name: "card.defaultImage"))
             "card.thirdTMI"))
        
            return .uploadMultipart(multiPartData)
        case .cardListFetch(let userID, let isList, let offset):
            return .requestParameters(parameters: ["userId": userID,
                                                   "list": isList ?? false,
                                                   "offset": offset ?? ""
            ], encoding: URLEncoding.queryString)
        case .cardListEdit(let requestModel):
            return .requestJSONEncodable(requestModel)
        }
    }
    
    var headers: [String: String]? {
        switch self {
        case .cardDetailFetch, .cardDelete:
            return .none
        case .cardCreation:
            return ["Content-Type": "multipart/form-data"]
        case .cardListEdit:
            return ["Content-Type": "application/json"]
        }
    }
}
```

<br>

### 3. ์ ๋ค๋ฆญ ํ์์ผ๋ก Service๋ฅผ ๊ฐ์ง MoyaProvider ์ธ์คํด์ค๋ฅผ ์์ฑํ๋ค.

```swift
var cardProvider = MoyaProvider<CardService>(plugins: [NetworkLoggerPlugin()])

provider.request(.createUser(firstName: "James", lastName: "Potter")) { result in
    // do something with the result (read on for more details)
}
```

> **์ฐธ๊ณ ๐ก** NetworkLoggerPlugin๋?
> 
> : ๋ฐ์ํ๋ ๋ชจ๋  ๋คํธ์ํฌ ์์์ ์ฝ์์ ๊ธฐ๋กํด์ฃผ๋ ๊ฒ์ ๋ปํ๋ค.

### 4. ์๋ฒ ํต์ ์ ์งํํ๋ ํ์ผ์ ๋ง๋ค๊ณ , ์๋ฒ ํต์ ์ ํ๋ค.


```swift
import Foundation
import Moya

public class CardAPI {
    static let shared = CardAPI()
    var cardProvider = MoyaProvider<CardService>(plugins: [MoyaLoggerPlugin()])
    
    public init() { }
    
    func cardDetailFetch(cardID: String, completion: @escaping (NetworkResult<Any>) -> Void) {
        cardProvider.request(.cardDetailFetch(cardID: cardID)) { (result) in
            switch result {
            case .success(let response):
                let statusCode = response.statusCode
                let data = response.data
                
                let networkResult = self.judgeCardDetailFetchStatus(by: statusCode, data)
                completion(networkResult)
                
            case .failure(let err):
                print(err)
            }
        }
    }
    
    func cardCreation(request: CardCreationRequest, image: UIImage, completion: @escaping (NetworkResult<Any>) -> Void) {
        cardProvider.request(.cardCreation(request: request, image: image)) { (result) in
            switch result {
            case .success(let response):
                let statusCode = response.statusCode
                let data = response.data

                let networkResult = self.judgeCardCreationStatus(by: statusCode, data)
                completion(networkResult)
                
            case .failure(let err):
                print(err)
                completion(.networkFail)
            }
        }
    }
    
    func cardListEdit(request: CardListEditRequest, completion: @escaping (NetworkResult<Any>) -> Void) {
        cardProvider.request(.cardListEdit(request: request)) { (result) in
            switch result {
            case .success(let response):
                let statusCode = response.statusCode
                let data = response.data
                
                let networkResult = self.judgeStatus(by: statusCode, data)
                completion(networkResult)
                
            case .failure(let err):
                print(err)
            }
        }
    }
    
    func cardDelete(cardID: String, completion: @escaping (NetworkResult<Any>) -> Void) {
        cardProvider.request(.cardDelete(cardID: cardID)) { (result) in
            switch result {
            case .success(let response):
                let statusCode = response.statusCode
                let data = response.data
                
                let networkResult = self.judgeStatus(by: statusCode, data)
                completion(networkResult)
                
            case .failure(let err):
                print(err)
            }
        }
    }
    
    private func judgeCardDetailFetchStatus(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(GenericResponse<Card>.self, from: data)
        else {
            return .pathErr
        }
        
        switch statusCode {
        case 200:
            return .success(decodedData.data ?? "None-Data")
        case 400..<500:
            return .requestErr(decodedData.msg)
        case 500:
            return .serverErr
        default:
            return .networkFail
        }
    }
    
    private func judgeCardCreationStatus(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(GenericResponse<Card>.self, from: data)
        else {
            return .pathErr
        }
        
        switch statusCode {
        case 201:
            return .success(decodedData.data ?? "None-Data")
        case 400..<500:
            return .requestErr(decodedData.msg)
        case 500:
            return .serverErr
        default:
            return .networkFail
        }
    }
    
    private func judgeStatus(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(GenericResponse<String>.self, from: data)
        else { return .pathErr }
        
        switch statusCode {
        case 200:
            return .success(decodedData.msg)
        case 400..<500:
            return .requestErr(decodedData.msg)
        case 500:
            return .serverErr
        default:
            return .networkFail
        }
    }
}
```

<br>

---

<br>

## 2๏ธโฃ ์ถ๊ฐ ๊ณต๋ถํ  ๊ฒ ์ ๋ฆฌ

- [ ] ์ฝ๋๋ฒ ์ด์ค ๊ณต๋ถํ๊ธฐ (โ ์ค๋ํท ์ด์ฉํด์ ์ธ์คํ ๊ณผ์ ๋ฅผ ์ค๋ณด๊ธฐ๋ฐ์์ ์ฝ๋๊ธฐ๋ฐ์ผ๋ก ์ง๊ธฐ)

- [X] ์๋ฒํต์  ์ฐ๊ฒฐ ์ถ๊ฐ ๊ณต๋ถํ๊ธฐ (โ ํฉ๋์ธ๋ฏธ๋ 16์กฐ ๋น๊ทผ๋ง์ผ ์๋ฒ ์์๋ก๊ทธ์ธ, ํธ์์๋ฆผ ์ถ๊ฐ ์ฐ๊ฒฐ ์คํฐ๋, ํฉ๋์ธ๋ฏธ๋ 8์กฐ ์ปค๋ฆฌ์ด๋ฆฌ API ๋ถ์ฌ๋ณด๊ธฐ)

- [X] Swift ๋ฌธ๋ฒ ๊ณต๋ถ (-> TIL ์ฌ๋ฆฌ๊ธฐ)

*์ด์ธ ์ถ๊ฐ ์๋ฐ์ดํธ๋๋ ์ ๋ฆฌ๊ธ์ ์  ๊นํ๋ธ [TIL](https://github.com/devxsby/TIL)์ ์ฐธ๊ณ ํด์ฃผ์ธ์!*

<br>

---

### ์ฐธ๊ณ ์๋ฃ

[URLSession | Apple Developer Documentation](https://developer.apple.com/documentation/foundation/urlsession)

[Alamofire ๊นํ๋ธ ๊ณต์๋ฌธ์](https://github.com/Alamofire/Alamofire)

[Moya ๊นํ๋ธ ๊ณต์๋ฌธ์](https://github.com/Moya/Moya)

[[iOS - swift] 1. Alamofire ์ฌ์ฉ ๋ฐฉ๋ฒ - Network Layer ๊ตฌํ (Moya ํ๋ ์์ํฌ์ฒ๋ผ ์ฌ์ฉํ๋ ๋ฐฉ๋ฒ)](https://ios-development.tistory.com/731)

[[Swift] Alamofire๋ฅผ Moya์ฒ๋ผ ์ฌ์ฉํด๋ณด์! By Router Pattern (1ํธ - Foundation Setting)](https://jazz-the-it.tistory.com/25)

[[Swift] Alamofire๋ฅผ Moya์ฒ๋ผ ์ฌ์ฉํด๋ณด์! By Router Pattern (2ํธ - Services, Routers ๊ตฌํ)](https://jazz-the-it.tistory.com/26?category=1003495)

[Alamofire 5 Tutorial for iOS: Getting Started](https://www.raywenderlich.com/6587213-alamofire-5-tutorial-for-ios-getting-started#toc-anchor-009)

[Fetching Website Data into Memory](https://developer.apple.com/documentation/foundation/url_loading_system/fetching_website_data_into_memory)

[Swift, URLSession๊ฐ ๋ฌด์์ธ์ง, ์ด๋ป๊ฒ ์ฌ์ฉํ๋์ง ์์๋ด๋๋ค.](https://devmjun.github.io/archive/URLsession)

[iOS URLSession ์ดํดํ๊ธฐ](https://hcn1519.github.io/articles/2017-07/iOS_URLSession)

[[iOS - swift] URLSession ๋คํธ์ํฌ ํต์  ๊ธฐ๋ณธ (URLSessionConfiguration, URLSession, URLComponents, URLSessionTask)](https://ios-development.tistory.com/651)

[[iOS] Moya๊ฐ ๋ชจ์ผ? - Moya๋ก Get ํต์ ํ๊ธฐ](https://roniruny.tistory.com/150)

[[iOS] Moya , Alamofire , URLSession ๋น๊ต](https://velog.io/@heyksw/iOS-Moya-Alamofire-URLSession-๋น๊ต)
