.class final Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$CallerRingtone;
.super Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$Ringtone;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallerRingtone"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$Ringtone;-><init>(Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$1;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$CallerRingtone;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;ILcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController$OnSetAsRingtoneListener;)I
    .locals 5

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-lez p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 202
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 204
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v3, "highlight_offset"

    .line 205
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 204
    invoke-virtual {p2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 205
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    :cond_1
    const-string v3, "ringtone_uri"

    .line 208
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "vnd.android.cursor.item/contact"

    .line 209
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 212
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    const v2, 0x7f0b0172

    .line 214
    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 217
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/music/player/setas/control/SetAsRingtoneController;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller ringtone - setAs() - isRecommended: "

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
.end method
