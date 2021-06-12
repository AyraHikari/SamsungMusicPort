.class public final enum Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchFragmentTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

.field public static final enum LOCAL_GUIDE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

.field public static final enum LOCAL_HISTORY:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

.field public static final enum LOCAL_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

.field public static final enum STORE_AUTO_COMPLETE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

.field public static final enum STORE_HISTORY:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

.field public static final enum STORE_POPULAR_KEYWORDS:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

.field public static final enum STORE_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;


# instance fields
.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mSearchType:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 261
    new-instance v6, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    const-string v1, "LOCAL_GUIDE"

    const-string v3, "LOCAL_GUIDE"

    sget-object v4, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    const-class v5, Lcom/samsung/android/app/music/list/local/SearchGuideFragment;

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;Ljava/lang/Class;)V

    sput-object v6, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_GUIDE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    .line 262
    new-instance v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    const-string v8, "LOCAL_HISTORY"

    const-string v10, "LOCAL_HISTORY"

    sget-object v11, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    const-class v12, Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_HISTORY:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    .line 263
    new-instance v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    const-string v2, "LOCAL_RESULT"

    const-string v4, "LOCAL_RESULT"

    sget-object v5, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    const-class v6, Lcom/samsung/android/app/music/list/local/SearchFragment;

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    .line 264
    new-instance v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    const-string v8, "STORE_POPULAR_KEYWORDS"

    const-string v10, "STORE_POPULAR_KEYWORDS"

    sget-object v11, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    const-class v12, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_POPULAR_KEYWORDS:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    .line 265
    new-instance v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    const-string v2, "STORE_HISTORY"

    const-string v4, "STORE_HISTORY"

    sget-object v5, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    const-class v6, Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_HISTORY:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    .line 266
    new-instance v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    const-string v8, "STORE_AUTO_COMPLETE"

    const-string v10, "STORE_AUTO_COMPLETE"

    sget-object v11, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    const-class v12, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;

    const/4 v9, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_AUTO_COMPLETE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    .line 267
    new-instance v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    const-string v2, "STORE_RESULT"

    const-string v4, "STORE_RESULT"

    sget-object v5, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    const-class v6, Lcom/samsung/android/app/music/milk/store/search/StoreSearchFragment;

    const/4 v3, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    const/4 v0, 0x7

    .line 259
    new-array v0, v0, [Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    sget-object v1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_GUIDE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_HISTORY:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_POPULAR_KEYWORDS:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_HISTORY:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_AUTO_COMPLETE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->$VALUES:[Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/search/SearchConstants$SearchType;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 276
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 277
    iput-object p3, p0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->mTag:Ljava/lang/String;

    .line 278
    iput-object p4, p0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->mSearchType:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    .line 279
    iput-object p5, p0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->mClass:Ljava/lang/Class;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;
    .locals 1

    .line 259
    const-class v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;
    .locals 1

    .line 259
    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->$VALUES:[Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    return-object v0
.end method


# virtual methods
.method public getClassType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getSearchType()Lcom/samsung/android/app/music/search/SearchConstants$SearchType;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->mSearchType:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->mTag:Ljava/lang/String;

    return-object v0
.end method
