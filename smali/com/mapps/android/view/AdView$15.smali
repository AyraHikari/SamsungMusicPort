.class Lcom/mapps/android/view/AdView$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->requestSSPImageFileSave(Lcom/mz/common/network/data/DataNTSSP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;

.field private final synthetic val$data:Lcom/mz/common/network/data/DataNTSSP;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/data/DataNTSSP;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$15;->this$0:Lcom/mapps/android/view/AdView;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$15;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 341
    iget-object v0, p0, Lcom/mapps/android/view/AdView$15;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTSSP;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 343
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 344
    iget-object v1, p0, Lcom/mapps/android/view/AdView$15;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v3, p0, Lcom/mapps/android/view/AdView$15;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v3}, Lcom/mz/common/network/data/DataNTSSP;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2}, Lcom/mapps/android/view/AdView;->ImageFileSave(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 345
    iget-object v1, p0, Lcom/mapps/android/view/AdView$15;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v2, p0, Lcom/mapps/android/view/AdView$15;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v1, v2, v0}, Lcom/mapps/android/view/AdView;->endSSPOperator(Lcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;)V

    return-void
.end method
