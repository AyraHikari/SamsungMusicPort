.class final Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$3;
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
.field final synthetic $alertDialog:Landroid/support/v7/app/AlertDialog;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;Landroid/support/v7/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$3;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$3;->$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 225
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$3;->$alertDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->cancel()V

    .line 226
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$onResume$3;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->onEditCanceled()V

    return-void
.end method
