.class public final Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$AlarmRingtone;,
        Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$CallerRingtone;,
        Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone;,
        Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$Ringtone;,
        Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$Ringtone;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetAs-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;->a:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;->b:Ljava/lang/String;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;->c:Landroid/util/SparseArray;

    .line 58
    sget-object v0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone;-><init>(Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$1;)V

    const v3, 0x7f13054f

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$CallerRingtone;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$CallerRingtone;-><init>(Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$1;)V

    const v3, 0x7f130555

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;->c:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$AlarmRingtone;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$AlarmRingtone;-><init>(Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$1;)V

    const v2, 0x7f130556

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;->d:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(ILandroid/net/Uri;ILcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)V
    .locals 3

    .line 72
    sget-object v0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$Ringtone;

    if-eqz v0, :cond_0

    .line 76
    sget-object p1, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected Ringtone Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;->d:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$Ringtone;->b(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)V

    return-void

    .line 74
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ringtoneType is unknown value : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
