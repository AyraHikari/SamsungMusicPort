.class Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;
.super Ljava/lang/Object;
.source "QuickConnectManagerCompat.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/samsung/quickconnect/QuickConnectManagerSdlCompat$QuickConnectSdlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickConnectSdlListener"
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;->mListener:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;->onItemSelected()V

    return-void
.end method

.method public setListener(Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectSdlListener;->mListener:Lcom/samsung/android/app/music/support/samsung/quickconnect/QuickConnectManagerCompat$QuickConnectListener;

    return-void
.end method
