.class public final Lcom/samsung/android/library/beaconmanager/BuildConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.samsung.android.library.beaconmanager"

.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"

.field public static final DEBUG:Z

.field public static final FLAVOR:Ljava/lang/String; = ""

.field public static final VERSION_CODE:I = -0x1

.field public static final VERSION_NAME:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "true"

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/library/beaconmanager/BuildConfig;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
