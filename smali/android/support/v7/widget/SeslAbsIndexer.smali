.class public abstract Landroid/support/v7/widget/SeslAbsIndexer;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# static fields
.field private static final DIGIT_CHAR:C = '#'

.field private static final FAVORITE_CHAR:C = '\u2605'

.field private static final GROUP_CHAR:Ljava/lang/String; = "\ud83d\udc65\ufe0e"

.field private static final GROUP_CHECKER:C = '\ud83d'

.field static final INDEXSCROLL_INDEX_COUNTS:Ljava/lang/String; = "indexscroll_index_counts"

.field static final INDEXSCROLL_INDEX_TITLES:Ljava/lang/String; = "indexscroll_index_titles"

.field private static final SYMBOL_BASE_CHAR:C = '!'

.field private static final SYMBOL_CHAR:C = '&'


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mAlphaMap:Landroid/util/SparseIntArray;

.field private mAlphabet:Ljava/lang/CharSequence;

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetLength:I

.field private mBundle:Landroid/os/Bundle;

.field private mCachingValue:[I

.field protected mCollator:Ljava/text/Collator;

.field private mCurrentLang:I

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private mDigitItemCount:I

.field private mFavoriteItemCount:I

.field private mGroupItemCount:I

.field private mLangAlphabetArray:[Ljava/lang/String;

.field private mLangIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProfileItemCount:I

.field private mUseDigitIndex:Z

.field private mUseFavoriteIndex:Z

.field private mUseGroupIndex:Z


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string v0, "SeslAbsIndexer"

    .line 58
    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->DEBUG:Z

    .line 68
    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 70
    iput v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mProfileItemCount:I

    .line 71
    iput v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mFavoriteItemCount:I

    .line 72
    iput v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mGroupItemCount:I

    .line 73
    iput v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mDigitItemCount:I

    .line 74
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mUseFavoriteIndex:Z

    .line 75
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mUseGroupIndex:Z

    .line 76
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mUseDigitIndex:Z

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mLangIndexMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    .line 123
    iput v1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mCurrentLang:I

    .line 135
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mUseFavoriteIndex:Z

    .line 136
    iput v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mProfileItemCount:I

    .line 137
    iput v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mFavoriteItemCount:I

    .line 138
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const-string v0, "SeslAbsIndexer"

    .line 58
    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->DEBUG:Z

    .line 68
    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 70
    iput v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mProfileItemCount:I

    .line 71
    iput v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mFavoriteItemCount:I

    .line 72
    iput v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mGroupItemCount:I

    .line 73
    iput v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mDigitItemCount:I

    .line 74
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mUseFavoriteIndex:Z

    .line 75
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mUseGroupIndex:Z

    .line 76
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mUseDigitIndex:Z

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mLangIndexMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    .line 123
    iput v1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mCurrentLang:I

    .line 152
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mUseFavoriteIndex:Z

    .line 153
    iput v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mProfileItemCount:I

    .line 154
    iput v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mFavoriteItemCount:I

    .line 155
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    .line 156
    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslAbsIndexer;->setMultiLangIndexer(I)V

    return-void
.end method

.method private compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 336
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getBundleInfo()V
    .locals 9

    .line 493
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mBundle:Landroid/os/Bundle;

    const-string v1, "indexscroll_index_titles"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 494
    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mBundle:Landroid/os/Bundle;

    const-string v2, "indexscroll_index_counts"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 495
    iget v2, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mProfileItemCount:I

    const/4 v3, 0x0

    move v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 498
    :goto_0
    iget v6, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabetLength:I

    if-ge v2, v6, :cond_5

    .line 499
    iget-object v6, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v6, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 502
    iget-object v7, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mCachingValue:[I

    aput v4, v7, v2

    const/16 v7, 0x2605

    if-ne v6, v7, :cond_0

    .line 506
    iget v7, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mFavoriteItemCount:I

    add-int/2addr v4, v7

    goto :goto_1

    :cond_0
    const v7, 0xd83d

    if-ne v6, v7, :cond_1

    .line 508
    iget v7, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mGroupItemCount:I

    add-int/2addr v4, v7

    :cond_1
    :goto_1
    move v7, v5

    .line 511
    :goto_2
    array-length v8, v0

    if-ge v7, v8, :cond_3

    .line 512
    aget-object v8, v0, v7

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v6, v8, :cond_2

    .line 513
    aget v5, v1, v7

    add-int/2addr v4, v5

    move v5, v7

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const-string v7, "#"

    .line 519
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_4

    .line 520
    iget-object v6, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mCachingValue:[I

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsIndexer;->getItemCount()I

    move-result v7

    iget v8, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mDigitItemCount:I

    sub-int/2addr v7, v8

    aput v7, v6, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private getPositionForString(Ljava/lang/String;)I
    .locals 14

    .line 374
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 375
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsIndexer;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 377
    iget-object v3, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    if-nez v3, :cond_0

    goto/16 :goto_a

    :cond_0
    if-eqz p1, :cond_14

    .line 381
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_9

    .line 388
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/high16 v4, -0x80000000

    .line 392
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    const/4 v6, 0x1

    if-eq v4, v5, :cond_3

    .line 396
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move v7, v4

    :cond_2
    move v4, v1

    goto :goto_1

    .line 400
    :cond_3
    iget-object v5, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_4

    .line 402
    iget-object v7, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-le v3, v7, :cond_4

    .line 403
    iget-object v7, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 404
    invoke-virtual {v0, v7, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v4, :cond_4

    .line 406
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    .line 412
    :goto_0
    iget-object v8, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v8, v6

    if-ge v5, v8, :cond_2

    iget-object v8, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    add-int/2addr v5, v6

    invoke-interface {v8, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-ge v3, v8, :cond_2

    .line 413
    iget-object v8, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v8, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 414
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 416
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 420
    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x26

    if-ne v2, v5, :cond_5

    const-string v8, "!"

    goto :goto_2

    :cond_5
    move-object v8, p1

    :goto_2
    const/16 v9, 0x2605

    if-ne v2, v9, :cond_6

    .line 427
    iget v10, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mProfileItemCount:I

    if-ge v7, v10, :cond_8

    .line 428
    iget v7, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mProfileItemCount:I

    goto :goto_3

    :cond_6
    const v10, 0xd83d

    if-ne v2, v10, :cond_7

    .line 431
    iget v10, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mProfileItemCount:I

    iget v11, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mFavoriteItemCount:I

    add-int/2addr v10, v11

    if-ge v7, v10, :cond_8

    .line 432
    iget v7, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mProfileItemCount:I

    iget v10, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mFavoriteItemCount:I

    add-int/2addr v7, v10

    goto :goto_3

    .line 435
    :cond_7
    iget v10, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mProfileItemCount:I

    iget v11, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mFavoriteItemCount:I

    add-int/2addr v10, v11

    iget v11, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mGroupItemCount:I

    add-int/2addr v10, v11

    if-ge v7, v10, :cond_8

    .line 436
    iget v7, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mProfileItemCount:I

    iget v10, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mFavoriteItemCount:I

    add-int/2addr v7, v10

    iget v10, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mGroupItemCount:I

    add-int/2addr v7, v10

    .line 440
    :cond_8
    :goto_3
    iget v10, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mDigitItemCount:I

    sub-int/2addr v4, v10

    const/16 v10, 0x23

    if-ne v2, v10, :cond_9

    move v7, v4

    :cond_9
    add-int v11, v4, v7

    .line 445
    div-int/lit8 v11, v11, 0x2

    :goto_4
    if-lt v11, v7, :cond_12

    if-ge v11, v4, :cond_12

    .line 448
    invoke-virtual {p0, v11}, Landroid/support/v7/widget/SeslAbsIndexer;->getItemAt(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_10

    const-string v13, ""

    .line 449
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    goto :goto_6

    .line 457
    :cond_a
    invoke-direct {p0, v12, v8}, Landroid/support/v7/widget/SeslAbsIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-eq v2, v9, :cond_b

    if-eq v2, v5, :cond_b

    if-ne v2, v10, :cond_c

    :cond_b
    const/4 v12, 0x1

    :cond_c
    if-eqz v12, :cond_e

    if-gez v12, :cond_f

    add-int/lit8 v11, v11, 0x1

    if-lt v11, v1, :cond_d

    goto :goto_8

    :cond_d
    move v7, v11

    goto :goto_5

    :cond_e
    if-ne v7, v11, :cond_f

    goto :goto_7

    :cond_f
    move v4, v11

    :goto_5
    add-int v11, v7, v4

    .line 481
    div-int/lit8 v11, v11, 0x2

    goto :goto_4

    :cond_10
    :goto_6
    if-gt v11, v7, :cond_11

    goto :goto_7

    :cond_11
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    :cond_12
    :goto_7
    move v1, v11

    .line 483
    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, v6, :cond_13

    .line 484
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_13
    return v1

    :cond_14
    :goto_9
    return v1

    :cond_15
    :goto_a
    return v2
.end method

.method private initIndexer(Ljava/lang/CharSequence;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 303
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 307
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabetLength:I

    .line 308
    iget p1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabetLength:I

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mCachingValue:[I

    .line 309
    iget p1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabetLength:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabetArray:[Ljava/lang/String;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 311
    :goto_0
    iget v1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabetLength:I

    if-ge v0, v1, :cond_1

    .line 312
    iget-boolean v1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mUseGroupIndex:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xd83d

    if-ne v1, v2, :cond_0

    .line 313
    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabetArray:[Ljava/lang/String;

    const-string v2, "\ud83d\udc65\ufe0e"

    aput-object v2, v1, v0

    goto :goto_1

    .line 315
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabetArray:[Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_1
    new-instance v0, Landroid/util/SparseIntArray;

    iget v1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabetLength:I

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 321
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mCollator:Ljava/text/Collator;

    .line 322
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1}, Ljava/text/Collator;->setStrength(I)V

    return-void

    .line 304
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid indexString :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setMultiLangIndexer(I)V
    .locals 6

    .line 189
    iput p1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mCurrentLang:I

    .line 192
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mUseFavoriteIndex:Z

    const/16 v0, 0x26

    if-eqz p1, :cond_1

    .line 193
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mUseGroupIndex:Z

    const/16 v1, 0x2605

    if-eqz p1, :cond_0

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0xd83d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 197
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 204
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    .line 206
    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 207
    iget-object v3, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v3, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mUseDigitIndex:Z

    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x23

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsIndexer;->initIndexer(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method cacheIndexInfo()V
    .locals 4

    .line 343
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsIndexer;->isDataToBeIndexedAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsIndexer;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 347
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsIndexer;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mBundle:Landroid/os/Bundle;

    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mBundle:Landroid/os/Bundle;

    const-string v1, "indexscroll_index_titles"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mBundle:Landroid/os/Bundle;

    const-string v1, "indexscroll_index_counts"

    .line 349
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    invoke-direct {p0}, Landroid/support/v7/widget/SeslAbsIndexer;->getBundleInfo()V

    return-void

    :cond_1
    const-string v0, ""

    .line 355
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsIndexer;->onBeginTransaction()V

    const/4 v1, 0x0

    .line 356
    :goto_0
    iget v2, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabetLength:I

    if-ge v1, v2, :cond_2

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabet:Ljava/lang/CharSequence;

    invoke-interface {v3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    iget-object v3, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mCachingValue:[I

    invoke-direct {p0, v2}, Landroid/support/v7/widget/SeslAbsIndexer;->getPositionForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslAbsIndexer;->onEndTransaction()V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method getAlphabetArray()[Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getBundle()Landroid/os/Bundle;
.end method

.method getCachingValue(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 175
    iget v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphabetLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mCachingValue:[I

    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method getCurrentLang()I
    .locals 1

    .line 285
    iget v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mCurrentLang:I

    return v0
.end method

.method protected abstract getItemAt(I)Ljava/lang/String;
.end method

.method protected abstract getItemCount()I
.end method

.method getLangAlphabetArray()[Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mLangAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method getLangbyIndex(I)I
    .locals 2

    if-ltz p1, :cond_0

    .line 294
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mLangIndexMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mLangIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected abstract isDataToBeIndexedAvailable()Z
.end method

.method isUseDigitIndex()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mUseDigitIndex:Z

    return v0
.end method

.method onBeginTransaction()V
    .locals 0

    return-void
.end method

.method public onChanged()V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 533
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 534
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 535
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method onEndTransaction()V
    .locals 0

    return-void
.end method

.method public onInvalidated()V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 546
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 547
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 548
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    return-void
.end method

.method registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 560
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method setDigitItem(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 264
    iput p1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mDigitItemCount:I

    const/4 p1, 0x1

    .line 265
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mUseDigitIndex:Z

    .line 266
    iget p1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mCurrentLang:I

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsIndexer;->setMultiLangIndexer(I)V

    :cond_0
    return-void
.end method

.method setFavoriteItem(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 239
    iput p1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mFavoriteItemCount:I

    const/4 p1, 0x1

    .line 240
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mUseFavoriteIndex:Z

    .line 241
    iget p1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mCurrentLang:I

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsIndexer;->setMultiLangIndexer(I)V

    :cond_0
    return-void
.end method

.method setGroupItem(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 251
    iput p1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mGroupItemCount:I

    const/4 p1, 0x1

    .line 252
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mUseGroupIndex:Z

    .line 253
    iget p1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mCurrentLang:I

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslAbsIndexer;->setMultiLangIndexer(I)V

    :cond_0
    return-void
.end method

.method setProfileItem(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 228
    iput p1, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mProfileItemCount:I

    :cond_0
    return-void
.end method

.method unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 569
    iget-object v0, p0, Landroid/support/v7/widget/SeslAbsIndexer;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
