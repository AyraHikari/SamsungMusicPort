.class public Lcom/samsung/android/app/music/support/android/content/IntentCompat;
.super Ljava/lang/Object;
.source "IntentCompat.java"


# static fields
.field public static final ACTION_MEDIA_SCAN_LAUNCH:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 2
    sput-object v0, Lcom/samsung/android/app/music/support/android/content/IntentCompat;->ACTION_MEDIA_SCAN_LAUNCH:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.MEDIA_SCAN"

    .line 3
    sput-object v0, Lcom/samsung/android/app/music/support/android/content/IntentCompat;->ACTION_MEDIA_SCAN_LAUNCH:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
