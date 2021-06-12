.class Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;->a(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;[B)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl$2;->b:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl$2;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl$2;->b:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl;->a:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SAPMessageListenerImpl$2;->a:[B

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->a([B)V

    return-void
.end method
