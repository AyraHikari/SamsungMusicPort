.class public final Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$keyboardReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$keyboardReceiver$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$keyboardReceiver$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->access$setReceiveTime$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;J)V

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment$keyboardReceiver$1;->this$0:Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;

    const-string v0, "AxT9IME.isVisibleWindow"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;->access$setKeyboardVisible$p(Lcom/samsung/android/app/music/list/playlist/EditTextDialogFragment;Z)V

    return-void
.end method
