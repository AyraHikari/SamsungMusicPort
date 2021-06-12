.class final Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone;
.super Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$Ringtone;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PhoneRingtone"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$Ringtone;-><init>(Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$1;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 0

    .line 138
    invoke-static {p1}, Lcom/samsung/android/app/music/support/android/telephony/SubscriptionManagerCompat;->getActiveSimSlot(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method private a(ILandroid/content/Context;Landroid/net/Uri;I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "recommendation_time"

    if-ne p1, v1, :cond_1

    .line 148
    sget v1, Lcom/samsung/android/app/music/support/android/media/RingtoneManagerCompat;->TYPE_RINGTONE_2:I

    const-string v3, "recommendation_time_2"

    :cond_1
    if-eqz v2, :cond_2

    .line 153
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    const-string v4, "highlight_offset"

    .line 154
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-virtual {p3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 154
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    .line 156
    :cond_2
    invoke-static {p2, v1, p3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 157
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, p4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    invoke-static {}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone ringtone - setAs(sim : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") - isRecommended: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", uri : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", highlight-offset: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f0b0177

    .line 160
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone;ILandroid/content/Context;Landroid/net/Uri;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone;->a(ILandroid/content/Context;Landroid/net/Uri;I)V

    return-void
.end method

.method private c(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)V
    .locals 10

    .line 167
    invoke-static {}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showSimChooserDialog()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->SELECT_NAME_1:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->SELECT_NAME_2:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 173
    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 175
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0178

    .line 176
    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 177
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 178
    new-instance v0, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone$1;-><init>(Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone;Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)V

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 189
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)I
    .locals 2

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 122
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, -0x64

    return p1

    .line 127
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 129
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone;->c(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)V

    const/4 p1, 0x1

    return p1

    .line 132
    :cond_1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$PhoneRingtone;->a(ILandroid/content/Context;Landroid/net/Uri;I)V

    const/4 p1, 0x0

    return p1
.end method
