.class Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SamsungAccountListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungAccountListenerImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SamsungAccountListenerImpl;->a:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$1;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SamsungAccountListenerImpl;-><init>(Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$SamsungAccountListenerImpl;->a:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->d:Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
