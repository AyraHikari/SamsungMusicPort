.class public final Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl$playerSceneStateListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/PlayerSceneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;-><init>(Lcom/samsung/android/app/music/activity/BaseServiceActivity;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 562
    iput-object p1, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl$playerSceneStateListener$1;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl$playerSceneStateListener$1;->a:Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;->a(Lcom/samsung/android/app/music/menu/PlayerMenuGroup$PlayerDeletableImpl;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/AbsDeleteableWithDialog$DeleteConfirmDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "PlayerMenuGroup"

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSceneStateChanged state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " fg="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    instance-of p1, v0, Landroid/support/v4/app/DialogFragment;

    if-eqz p1, :cond_1

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    :cond_1
    return-void
.end method
