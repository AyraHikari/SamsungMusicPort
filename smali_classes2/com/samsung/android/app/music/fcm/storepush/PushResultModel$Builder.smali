.class public Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field action:I

.field campaignId:Ljava/lang/String;

.field cause:Ljava/lang/String;

.field seq:Ljava/lang/String;

.field uniqueId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->action:I

    .line 99
    invoke-virtual {p2}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->campaignId:Ljava/lang/String;

    .line 100
    invoke-virtual {p2}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel;->getSeq()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->seq:Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->uniqueId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;
    .locals 1

    .line 115
    new-instance v0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel;-><init>(Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;)V

    return-object v0
.end method

.method public setAction(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->action:I

    const-string p1, ""

    .line 111
    iput-object p1, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->cause:Ljava/lang/String;

    return-void
.end method

.method public setAction(ILjava/lang/String;)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->action:I

    .line 106
    iput-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/PushResultModel$Builder;->cause:Ljava/lang/String;

    return-void
.end method
