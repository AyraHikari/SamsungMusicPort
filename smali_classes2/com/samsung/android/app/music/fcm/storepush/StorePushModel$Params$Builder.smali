.class public Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private deeplink:Ljava/lang/String;

.field private expandMessage:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private largeIcon:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private weblink:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->title:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->title:Ljava/lang/String;

    .line 181
    iput-object p2, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->message:Ljava/lang/String;

    .line 182
    iput-object p3, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->expandMessage:Ljava/lang/String;

    .line 183
    iput-object p4, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->deeplink:Ljava/lang/String;

    .line 184
    iput-object p6, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->image:Ljava/lang/String;

    .line 185
    iput-object p5, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->weblink:Ljava/lang/String;

    .line 186
    iput-object p7, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->largeIcon:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;)Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;)Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;)Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->expandMessage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;)Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->deeplink:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;)Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->weblink:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;)Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->image:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;)Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;->largeIcon:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;
    .locals 1

    .line 190
    new-instance v0, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params;-><init>(Lcom/samsung/android/app/music/fcm/storepush/StorePushModel$Params$Builder;)V

    return-object v0
.end method
