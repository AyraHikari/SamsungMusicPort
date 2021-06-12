.class public Lcom/samsung/android/sdk/ppmt/PpmtConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PpmtConfiguration"

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .line 171
    sget v0, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration;->b:I

    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p0, :cond_6

    if-eqz p1, :cond_5

    .line 225
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_4

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 227
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo;->a(Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo;)Ljava/util/Map;

    move-result-object v1

    .line 228
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 229
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo$Type;

    .line 231
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 232
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "channel - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not created"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Channel - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not created. Channel must be created before setNotifChannel()"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 238
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object p0

    .line 239
    sget-object v2, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo$Type;->Notice:Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo$Type;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo$Type;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->e(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    sget-object v3, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo$Type;->Marketing:Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo$Type;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo$Type;->ordinal()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->e(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ppmt_notice_cid"

    .line 243
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo$Type;->Notice:Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo$Type;

    .line 244
    invoke-virtual {p1, v4}, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo;->a(Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo$Type;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 245
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_2
    const-string v2, "ppmt_marketing_cid"

    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo$Type;->Marketing:Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo$Type;

    .line 248
    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo;->a(Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo$Type;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 249
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 252
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 253
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo$Type;

    .line 255
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/PpmtConfiguration$ChannelInfo$Type;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void

    .line 222
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "channelInfo is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 219
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
