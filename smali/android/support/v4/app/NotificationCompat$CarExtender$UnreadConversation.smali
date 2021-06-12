.class public Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$CarExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnreadConversation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;
    }
.end annotation


# instance fields
.field private final mLatestTimestamp:J

.field private final mMessages:[Ljava/lang/String;

.field private final mParticipants:[Ljava/lang/String;

.field private final mReadPendingIntent:Landroid/app/PendingIntent;

.field private final mRemoteInput:Landroid/support/v4/app/RemoteInput;

.field private final mReplyPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/support/v4/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V
    .locals 0

    .line 4354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4355
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    .line 4356
    iput-object p2, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mRemoteInput:Landroid/support/v4/app/RemoteInput;

    .line 4357
    iput-object p4, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    .line 4358
    iput-object p3, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    .line 4359
    iput-object p5, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    .line 4360
    iput-wide p6, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mLatestTimestamp:J

    return-void
.end method


# virtual methods
.method public getLatestTimestamp()J
    .locals 2

    .line 4412
    iget-wide v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mLatestTimestamp:J

    return-wide v0
.end method

.method public getMessages()[Ljava/lang/String;
    .locals 1

    .line 4367
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mMessages:[Ljava/lang/String;

    return-object v0
.end method

.method public getParticipant()Ljava/lang/String;
    .locals 2

    .line 4405
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getParticipants()[Ljava/lang/String;
    .locals 1

    .line 4398
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mParticipants:[Ljava/lang/String;

    return-object v0
.end method

.method public getReadPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 4391
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mReadPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getRemoteInput()Landroid/support/v4/app/RemoteInput;
    .locals 1

    .line 4375
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mRemoteInput:Landroid/support/v4/app/RemoteInput;

    return-object v0
.end method

.method public getReplyPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 4383
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mReplyPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method
