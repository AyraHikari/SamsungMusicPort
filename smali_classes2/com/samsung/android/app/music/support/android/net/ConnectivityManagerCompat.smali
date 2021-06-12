.class public Lcom/samsung/android/app/music/support/android/net/ConnectivityManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_WIFI_P2P:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v0, 0xd

    sput v0, Lcom/samsung/android/app/music/support/android/net/ConnectivityManagerCompat;->TYPE_WIFI_P2P:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
