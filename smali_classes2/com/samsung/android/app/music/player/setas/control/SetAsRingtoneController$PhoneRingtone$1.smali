.class Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone;->c(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:I

.field final synthetic d:Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;

.field final synthetic e:Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone;Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->e:Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->b:Landroid/net/Uri;

    iput p4, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->c:I

    iput-object p5, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->d:Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 181
    invoke-static {}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimChooserDialog - onClick() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->e:Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->b:Landroid/net/Uri;

    iget v2, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->c:I

    invoke-static {p1, p2, v0, v1, v2}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone;->a(Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone;ILandroid/content/Context;Landroid/net/Uri;I)V

    .line 184
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->d:Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;

    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;->d:Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;

    invoke-interface {p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;->a()V

    :cond_1
    return-void
.end method
