.class Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;->a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener$1;->b:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener$1;->b:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener$1;->a:Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultResponseExecutor$OnSearchListener;Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment$MoveToDetailInfo;)V

    return-void
.end method
