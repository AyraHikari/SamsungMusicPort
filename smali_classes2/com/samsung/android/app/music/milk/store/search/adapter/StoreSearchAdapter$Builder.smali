.class public Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;
.super Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder<",
        "Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private d:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 592
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;-><init>(Landroid/support/v4/app/Fragment;)V

    const/4 p1, 0x0

    .line 583
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->a:Z

    const/4 p1, 0x1

    .line 585
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->b:Z

    .line 589
    sget-object p1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->d:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;)Z
    .locals 0

    .line 581
    iget-boolean p0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;)Z
    .locals 0

    .line 581
    iget-boolean p0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->b:Z

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;)Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;
    .locals 0

    .line 581
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;
    .locals 0

    .line 581
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->d:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    return-object p0
.end method


# virtual methods
.method protected a()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;
    .locals 0

    return-object p0
.end method

.method public a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->d:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    return-object p0
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-object p0
.end method

.method public a(Z)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;
    .locals 0

    .line 601
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->a:Z

    return-object p0
.end method

.method public b(Z)Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;
    .locals 0

    .line 606
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->b:Z

    return-object p0
.end method

.method public b()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;
    .locals 1

    .line 622
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;-><init>(Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;)V

    return-object v0
.end method

.method public synthetic build()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 581
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->b()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic self()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;
    .locals 1

    .line 581
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;->a()Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAdapter$Builder;

    move-result-object v0

    return-object v0
.end method
