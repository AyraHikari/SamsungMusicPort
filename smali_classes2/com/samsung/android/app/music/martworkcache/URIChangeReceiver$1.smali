.class final Lcom/samsung/android/app/music/martworkcache/URIChangeReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/martworkcache/URIChangeReceiver;->a(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/samsung/android/app/music/martworkcache/URIChangeReceiver$1;->a:Z

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/samsung/android/app/music/martworkcache/URIChangeReceiver$1;->a:Z

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/music/martworkcache/URIChangeReceiver;->a(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method
