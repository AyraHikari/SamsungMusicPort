.class abstract Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$Ringtone;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Ringtone"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$1;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$Ringtone;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)I
.end method

.method final b(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)V
    .locals 0

    .line 92
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$Ringtone;->a(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)I

    move-result p1

    if-nez p1, :cond_0

    if-eqz p4, :cond_1

    .line 95
    invoke-interface {p4}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;->a()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    if-eqz p4, :cond_1

    .line 99
    invoke-interface {p4, p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method
