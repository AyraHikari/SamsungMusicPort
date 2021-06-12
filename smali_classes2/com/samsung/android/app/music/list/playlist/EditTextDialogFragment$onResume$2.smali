.class final Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 197
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 198
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->getEditPlaylistName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2$$special$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2$$special$$inlined$let$lambda$1;-><init>(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$2;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->editPlaylistName(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/ui/dialog/OnResultListener;)V

    goto :goto_0

    .line 220
    :cond_1
    sget-object p1, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->Companion:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "activity is null"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
