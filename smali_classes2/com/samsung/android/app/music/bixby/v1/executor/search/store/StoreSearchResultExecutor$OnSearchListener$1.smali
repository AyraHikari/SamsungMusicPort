.class Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;I)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener$1;->b:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;

    iput p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener$1;->b:Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;

    iget v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener$1;->a:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;->a(Lcom/samsung/android/app/music/bixby/v1/executor/search/store/StoreSearchResultExecutor$OnSearchListener;I)V

    return-void
.end method
