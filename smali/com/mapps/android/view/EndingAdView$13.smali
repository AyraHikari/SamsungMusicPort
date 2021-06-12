.class Lcom/mapps/android/view/EndingAdView$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->requestSSPImageFileSave(Lcom/mz/common/network/data/DataNTSSP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;

.field private final synthetic val$data:Lcom/mz/common/network/data/DataNTSSP;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;Lcom/mz/common/network/data/DataNTSSP;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$13;->this$0:Lcom/mapps/android/view/EndingAdView;

    iput-object p2, p0, Lcom/mapps/android/view/EndingAdView$13;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 348
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$13;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v0}, Lcom/mz/common/network/data/DataNTSSP;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 350
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 351
    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$13;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget-object v3, p0, Lcom/mapps/android/view/EndingAdView$13;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v3}, Lcom/mz/common/network/data/DataNTSSP;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2}, Lcom/mapps/android/view/EndingAdView;->ImageFileSave(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
