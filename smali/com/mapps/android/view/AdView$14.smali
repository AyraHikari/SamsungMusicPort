.class Lcom/mapps/android/view/AdView$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->requestImageFileSave(Lcom/mz/common/network/data/DataBannerAD;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;

.field private final synthetic val$data:Lcom/mz/common/network/data/DataBannerAD;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/data/DataBannerAD;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$14;->this$0:Lcom/mapps/android/view/AdView;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$14;->val$data:Lcom/mz/common/network/data/DataBannerAD;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 327
    iget-object v0, p0, Lcom/mapps/android/view/AdView$14;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v1, p0, Lcom/mapps/android/view/AdView$14;->val$data:Lcom/mz/common/network/data/DataBannerAD;

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataBannerAD;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/AdView$14;->val$data:Lcom/mz/common/network/data/DataBannerAD;

    invoke-virtual {v2}, Lcom/mz/common/network/data/DataBannerAD;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/view/AdView;->ImageFileSave(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 328
    iget-object v0, p0, Lcom/mapps/android/view/AdView$14;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->EndOperator()V

    return-void
.end method
