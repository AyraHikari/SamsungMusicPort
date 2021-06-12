.class public final Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$commandReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$commandReceiver$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

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

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SoundPicker"

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " commandReceiver - action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "android.media.AUDIO_BECOMING_NOISY"

    .line 59
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment$commandReceiver$1;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;->A_()V

    :cond_2
    return-void
.end method
