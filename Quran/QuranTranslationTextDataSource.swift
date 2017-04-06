//
//  QuranTranslationTextDataSource.swift
//  Quran
//
//  Created by Mohamed Afifi on 4/2/17.
//  Copyright © 2017 Quran.com. All rights reserved.
//

import GenericDataSources

class QuranTranslationTextDataSource: BaseBasicDataSource<TranslationTextLayout, QuranTranslationTextCollectionViewCell> {

    override func ds_collectionView(_ collectionView: GeneralCollectionView,
                                    configure cell: QuranTranslationTextCollectionViewCell,
                                    with item: TranslationTextLayout,
                                    at indexPath: IndexPath) {
        cell.label.font = item.text.translation.preferredTextFont
        cell.label.text = item.text.text
    }

    override func ds_collectionView(_ collectionView: GeneralCollectionView, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let item = self.item(at: indexPath)
        return CGSize(width: collectionView.ds_scrollView.bounds.width, height: item.size.height + 20)
    }
}