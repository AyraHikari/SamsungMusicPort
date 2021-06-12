.class final Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2$$special$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2$$special$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(IJ)V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2$$special$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    .line 216
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2$$special$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    const/4 p2, 0x0

    const/4 p3, -0x1

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->onEditCompleted(Ljava/lang/String;J)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2$$special$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getLastErrorCode()I

    move-result p1

    if-eq p1, p2, :cond_3

    .line 208
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2$$special$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->setLastErrorCode(I)V

    .line 209
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2$$special$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getTextInputLayout()Landroid/support/design/widget/TextInputLayout;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2$$special$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;

    iget-object p2, p2, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    const p3, 0x7f0b02f9

    const/4 v0, 0x1

    .line 210
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2$$special$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;

    iget-object v2, v2, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getEditPlaylistName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 209
    invoke-virtual {p2, p3, v0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 213
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2$$special$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2$$special$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;

    iget-object p2, p2, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getEditPlaylistName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->access$updatePositiveButton(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2$$special$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->dismissAllowingStateLoss()V

    .line 204
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2$$special$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2$$special$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getEditPlaylistName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->onEditCompleted(Ljava/lang/String;J)V

    :goto_0
    return-void
.end method
