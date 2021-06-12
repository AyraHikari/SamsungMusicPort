.class Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->a(Ljava/lang/String;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;

.field final synthetic b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V
    .locals 0

    .line 1067
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl$1;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl$1;->a:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(ZLandroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1071
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl$1;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl$1;->a:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V

    goto :goto_0

    .line 1073
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl$1;->b:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl$1;->a:Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;->b(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$BixbyStoreSearchPlayableImpl;Lcom/samsung/android/app/music/bixby/v1/search/BixbyStoreSearchPlayable$OnPlayListener;)V

    :goto_0
    return-void
.end method
