.class Lcom/mapps/android/view/AdView$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->endSSPOperator(Lcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;

.field private final synthetic val$data:Lcom/mz/common/network/data/DataNTSSP;

.field private final synthetic val$imageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$27;->this$0:Lcom/mapps/android/view/AdView;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$27;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    iput-object p3, p0, Lcom/mapps/android/view/AdView$27;->val$imageName:Ljava/lang/String;

    .line 994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 996
    iget-object v0, p0, Lcom/mapps/android/view/AdView$27;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v1, p0, Lcom/mapps/android/view/AdView$27;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$3(Lcom/mapps/android/view/AdView;)I

    move-result v1

    iget-object v2, p0, Lcom/mapps/android/view/AdView$27;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    iget-object v3, p0, Lcom/mapps/android/view/AdView$27;->val$imageName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/mapps/android/view/AdView;->access$78(Lcom/mapps/android/view/AdView;ILcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;)V

    return-void
.end method
