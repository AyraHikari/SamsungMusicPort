.class Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$HandleSAPMessageListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/accessory/message/SAPMessageManager$OnHandleSAPMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleSAPMessageListenerImpl"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$HandleSAPMessageListenerImpl;->a:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$1;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$HandleSAPMessageListenerImpl;-><init>(Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$HandleSAPMessageListenerImpl;->a:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController$HandleSAPMessageListenerImpl;->a:Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/service/accessory/controller/SAMusicController;->a(ZLjava/lang/String;)V

    return-void
.end method
