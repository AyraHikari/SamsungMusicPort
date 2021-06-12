.class Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

.field final synthetic val$result:Landroid/support/v7/util/DiffUtil$DiffResult;


# direct methods
.method constructor <init>(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;Landroid/support/v7/util/DiffUtil$DiffResult;)V
    .locals 0

    .line 256
    iput-object p1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iput-object p2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->val$result:Landroid/support/v7/util/DiffUtil$DiffResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 259
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    invoke-static {v0}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->access$100(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget v1, v1, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$runGeneration:I

    if-ne v0, v1, :cond_0

    .line 260
    iget-object v0, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v0, v0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->this$0:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;

    iget-object v1, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->this$1:Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;

    iget-object v1, v1, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1;->val$newList:Ljava/util/List;

    iget-object v2, p0, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer$1$2;->val$result:Landroid/support/v7/util/DiffUtil$DiffResult;

    invoke-static {v0, v1, v2}, Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;->access$200(Landroid/support/v7/recyclerview/extensions/AsyncListDiffer;Ljava/util/List;Landroid/support/v7/util/DiffUtil$DiffResult;)V

    :cond_0
    return-void
.end method
