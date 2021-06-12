.class Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$AlarmRingtone;
.super Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$Ringtone;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlarmRingtone"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$Ringtone;-><init>(Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$1;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$AlarmRingtone;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)I
    .locals 6

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-lez p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 229
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "alarm://com.sec.android.app.clockpackage/alarmlist/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v1, :cond_1

    .line 232
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v3, "highlight_offset"

    .line 233
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-virtual {p2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 233
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    :cond_1
    const-string v3, "alarm_uri"

    .line 235
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "AlarmLaunchMode"

    const/4 v4, 0x3

    .line 236
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, -0xc8

    const v5, 0x7f0b0172

    if-eqz v3, :cond_2

    .line 239
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    invoke-static {}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alarm ringtone - setAs() - isRecommended: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", uri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", highlight-offset: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 241
    :catch_0
    invoke-static {p1, v5, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v4

    .line 246
    :cond_2
    invoke-static {p1, v5, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v4
.end method
