.class public final Lcom/samsung/android/app/music/support/android/net/ConnectivityManagerCompat;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.kt"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/app/music/support/android/net/ConnectivityManagerCompat;

.field private static final SEM_TYPE_WIFI_P2P:I = 0xd

.field public static final TYPE_WIFI_P2P:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/support/android/net/ConnectivityManagerCompat;

    invoke-direct {v0}, Lcom/samsung/android/app/music/support/android/net/ConnectivityManagerCompat;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/support/android/net/ConnectivityManagerCompat;->INSTANCE:Lcom/samsung/android/app/music/support/android/net/ConnectivityManagerCompat;

    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0xd

    sput v0, Lcom/samsung/android/app/music/support/android/net/ConnectivityManagerCompat;->TYPE_WIFI_P2P:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
