.class Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a(Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$1;->a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$1;->a:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;

    iget-object v0, v0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;->b(Z)V

    return-void
.end method
