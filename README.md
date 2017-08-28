# Enumerable

**Enumrable** can get all the elements of `Enum`.

# Usage
Currently only support `Int`.

Define `YourEnum`.
```swift
enum YourEnum: Int, Enumerable {
    case one
    case two
    case three
    case four
}
```

Get all elemnts.

```swift
print(YourEnum.elements) // one, two, three, four
print(YourEnum.count) // 4
```

It is particularly compatible with `TableView` and `CollectionView``.

```swift
enum RowType: Int, Enumerable {
    case one
    case two
    case three
    case four
}

public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
	return RowType.count
}


public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
	guard let item = RowType(rawValue: indexPath.item) else {
		fatalError("out of section type: \(indexPath.section), model has sections: \(String(describing: model?.sections))")
	}
	switch item {
		case .one:
		case two:
		...
	}
	...
}

```

# License

Enumerable is available under the MIT license. See the LICENSE file for more info.

