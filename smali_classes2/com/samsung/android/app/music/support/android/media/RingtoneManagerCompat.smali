.class public Lcom/samsung/android/app/music/support/android/media/RingtoneManagerCompat;
.super Ljava/lang/Object;
.source "RingtoneManagerCompat.java"


# static fields
.field public static final TYPE_RINGTONE_2:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v1, 0x80

    if-eqz v0, :cond_0

    .line 2
    sput v1, Lcom/samsung/android/app/music/support/android/media/RingtoneManagerCompat;->TYPE_RINGTONE_2:I

    goto :goto_0

    .line 3
    :cond_0
    sput v1, Lcom/samsung/android/app/music/support/android/media/RingtoneManagerCompat;->TYPE_RINGTONE_2:I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
