.class Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/search/IStoreSearchView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StoreSuggestionView"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionView;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method public c()Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;
    .locals 1

    .line 401
    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;->ACCURACY:Lcom/samsung/android/app/music/search/SearchConstants$SearchOrder;

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v_()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$StoreSuggestionView;->a:Ljava/lang/String;

    return-object v0
.end method
