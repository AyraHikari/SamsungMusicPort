.class Landroid/support/v4/media/SeslRingtoneManagerReflector$RingtoneManagerApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/SeslRingtoneManagerReflector$RingtoneManagerBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/SeslRingtoneManagerReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingtoneManagerApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/SeslRingtoneManagerReflector$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/support/v4/media/SeslRingtoneManagerReflector$RingtoneManagerApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_EXTRA_RINGTONE_AUDIO_ATTRIBUTES_FLAGS()Ljava/lang/String;
    .locals 2

    .line 23
    invoke-static {}, Landroid/support/v4/media/SeslRingtoneManagerReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "EXTRA_RINGTONE_AUDIO_ATTRIBUTES_FLAGS"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 26
    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    return-object v0
.end method
