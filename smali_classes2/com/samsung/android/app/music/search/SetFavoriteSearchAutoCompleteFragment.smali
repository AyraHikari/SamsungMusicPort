.class public Lcom/samsung/android/app/music/search/SetFavoriteSearchAutoCompleteFragment;
.super Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;-><init>()V

    return-void
.end method

.method public static b(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;
    .locals 3

    .line 12
    new-instance v0, Lcom/samsung/android/app/music/search/SetFavoriteSearchAutoCompleteFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/search/SetFavoriteSearchAutoCompleteFragment;-><init>()V

    .line 14
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "STORE_TYPE"

    .line 15
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/search/SetFavoriteSearchAutoCompleteFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected i()V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SetFavoriteSearchAutoCompleteFragment;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
