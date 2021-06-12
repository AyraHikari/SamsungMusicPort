.class public Lcom/samsung/android/app/music/support/android/content/IntentCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_MEDIA_SCAN_LAUNCH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 13
    sput-object v0, Lcom/samsung/android/app/music/support/android/content/IntentCompat;->ACTION_MEDIA_SCAN_LAUNCH:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.MEDIA_SCAN"

    .line 15
    sput-object v0, Lcom/samsung/android/app/music/support/android/content/IntentCompat;->ACTION_MEDIA_SCAN_LAUNCH:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
