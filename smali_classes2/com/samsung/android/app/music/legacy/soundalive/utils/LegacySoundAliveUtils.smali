.class public final Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z

.field private static final b:[I

.field private static final c:Landroid/util/SparseIntArray;

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v0, "1"

    const-string v1, "persist.audio.stereoapeaker"

    .line 35
    invoke-static {v1}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->a:Z

    const/4 v0, 0x2

    .line 37
    new-array v1, v0, [I

    sget v2, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->d:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->j:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sput-object v1, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->b:[I

    .line 40
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->c:Landroid/util/SparseIntArray;

    .line 43
    sget-object v1, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->c:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    const v5, 0x7f0b0098

    invoke-virtual {v1, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v1, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->c:Landroid/util/SparseIntArray;

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->a:I

    const v6, 0x7f0b02c9

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v1, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->c:Landroid/util/SparseIntArray;

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->b:I

    const v6, 0x7f0b02fc

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    sget-object v1, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->c:Landroid/util/SparseIntArray;

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->c:I

    const v6, 0x7f0b0333

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    sget-object v1, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->c:Landroid/util/SparseIntArray;

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->d:I

    const v6, 0x7f0b017c

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    sget-object v1, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->c:Landroid/util/SparseIntArray;

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->e:I

    const v6, 0x7f0b016d

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    sget-object v1, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->c:Landroid/util/SparseIntArray;

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->f:I

    const v6, 0x7f0b00df

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    sget-object v1, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->c:Landroid/util/SparseIntArray;

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->g:I

    const v6, 0x7f0b041b

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    sget-object v1, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->c:Landroid/util/SparseIntArray;

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->h:I

    const v6, 0x7f0b0184

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    sget-object v1, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->c:Landroid/util/SparseIntArray;

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->i:I

    const v6, 0x7f0b017a

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    sget-object v1, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->c:Landroid/util/SparseIntArray;

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->j:I

    const v6, 0x7f0b0183

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    sget-object v1, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->c:Landroid/util/SparseIntArray;

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->k:I

    const v6, 0x7f0b0435

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    sget-object v1, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->c:Landroid/util/SparseIntArray;

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->l:I

    const v6, 0x7f0b017d

    .line 56
    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    sget-object v1, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->c:Landroid/util/SparseIntArray;

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->m:I

    const v6, 0x7f0b017b

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    sget-object v1, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->c:Landroid/util/SparseIntArray;

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->n:I

    const v6, 0x7f0b00e4

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    sget-object v1, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->c:Landroid/util/SparseIntArray;

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->o:I

    const v6, 0x7f0b00f3

    invoke-virtual {v1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x10

    .line 62
    new-array v1, v1, [I

    aput v2, v1, v3

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->a:I

    aput v5, v1, v4

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->b:I

    aput v5, v1, v0

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->c:I

    const/4 v6, 0x3

    aput v5, v1, v6

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->d:I

    const/4 v7, 0x4

    aput v5, v1, v7

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->e:I

    const/4 v8, 0x5

    aput v5, v1, v8

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->f:I

    const/4 v9, 0x6

    aput v5, v1, v9

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->g:I

    const/4 v10, 0x7

    aput v5, v1, v10

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->h:I

    const/16 v11, 0x8

    aput v5, v1, v11

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->i:I

    const/16 v12, 0x9

    aput v5, v1, v12

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->j:I

    const/16 v13, 0xa

    aput v5, v1, v13

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->k:I

    const/16 v14, 0xb

    aput v5, v1, v14

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->l:I

    const/16 v15, 0xc

    aput v5, v1, v15

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->m:I

    const/16 v16, 0xd

    aput v5, v1, v16

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->n:I

    const/16 v17, 0xe

    aput v5, v1, v17

    sget v5, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->o:I

    const/16 v17, 0xf

    aput v5, v1, v17

    sput-object v1, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->d:[I

    const/16 v1, 0xe

    .line 70
    new-array v1, v1, [I

    aput v2, v1, v3

    sget v2, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->a:I

    aput v2, v1, v4

    sget v2, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->b:I

    aput v2, v1, v0

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->c:I

    aput v0, v1, v6

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->e:I

    aput v0, v1, v7

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->f:I

    aput v0, v1, v8

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->g:I

    aput v0, v1, v9

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->h:I

    aput v0, v1, v10

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->i:I

    aput v0, v1, v11

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->k:I

    aput v0, v1, v12

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->l:I

    aput v0, v1, v13

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->m:I

    aput v0, v1, v14

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->n:I

    aput v0, v1, v15

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->o:I

    aput v0, v1, v16

    sput-object v1, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->e:[I

    .line 84
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/utils/SoundAliveUtils;->isSoundAliveFX()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->d:[I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->e:[I

    :goto_0
    sput-object v0, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->f:[I

    return-void
.end method

.method public static a()I
    .locals 2

    const/16 v0, 0xd

    .line 175
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 179
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static a(I)I
    .locals 4

    .line 101
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->f:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 103
    sget-object v3, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->f:[I

    aget v3, v3, v2

    if-ne p0, v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .line 269
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    .line 270
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;-><init>()V

    .line 273
    sget-object v1, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/legacy/soundalive/dialog/LegacySoundAliveDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a([I[I)V
    .locals 2

    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arg_user_eq"

    .line 169
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p0, "arg_user_ext"

    .line 170
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const/16 p0, 0x19

    .line 171
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEventBundle(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 0

    .line 132
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->b(Landroid/content/Context;I)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    .line 87
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->f:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 88
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 89
    sget-object v2, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->c:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->b(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(I)I
    .locals 1

    .line 117
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->f:[I

    aget p0, v0, p0

    return p0
.end method

.method public static b(Landroid/content/Context;I)I
    .locals 2

    .line 136
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathEarjack()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathBT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->e(I)Z

    move-result p0

    if-nez p0, :cond_4

    const v1, 0x7f0b017f

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathLineOut()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->f(I)Z

    move-result p0

    if-nez p0, :cond_4

    const v1, 0x7f0b0181

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathHdmi()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 151
    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->g(I)Z

    move-result p0

    if-nez p0, :cond_4

    const v1, 0x7f0b0180

    goto :goto_0

    .line 155
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->d(I)Z

    move-result p0

    if-nez p0, :cond_4

    const v1, 0x7f0b0182

    :cond_4
    :goto_0
    return v1
.end method

.method public static c(I)V
    .locals 1

    .line 164
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x18

    .line 163
    invoke-static {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->sendCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method private static d(I)Z
    .locals 1

    .line 199
    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->k:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->l:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->g:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->i:I

    if-ne p0, v0, :cond_1

    :cond_0
    sget-boolean p0, Lcom/samsung/android/app/music/legacy/soundalive/utils/LegacySoundAliveUtils;->a:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 222
    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->a:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->b:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->c:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->d:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->e:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->f:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->o:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static f(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 246
    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->a:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->b:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->c:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->d:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->e:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->f:I

    if-eq p0, v0, :cond_1

    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->o:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static g(I)Z
    .locals 1

    .line 262
    sget v0, Lcom/samsung/android/app/music/legacy/soundalive/info/LegacySoundAliveConstants$PresetConstants;->a:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
