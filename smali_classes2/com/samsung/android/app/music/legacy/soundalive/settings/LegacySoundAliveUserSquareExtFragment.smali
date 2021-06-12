.class public Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;
.super Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "LegacySoundAliveUserSquareExtFragment"

.field private static final b:Ljava/lang/String;

.field private static final c:[I

.field private static final d:[I


# instance fields
.field private final e:[I

.field private f:[Landroid/widget/Switch;

.field private g:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->b:Ljava/lang/String;

    const/4 v0, 0x3

    .line 33
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->c:[I

    .line 36
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->d:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1302f6
        0x7f1302f7
        0x7f1302f8
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;-><init>()V

    const/4 v0, 0x5

    .line 38
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->e:[I

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;)[I
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->e:[I

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;)[Landroid/widget/Switch;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->f:[Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f0400cf

    return v0
.end method

.method public a(Landroid/view/View;)V
    .locals 6

    .line 77
    sget-object v0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->c:[I

    array-length v0, v0

    .line 78
    new-array v1, v0, [Landroid/widget/Switch;

    iput-object v1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->f:[Landroid/widget/Switch;

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->b()[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 83
    sget-object v3, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->c:[I

    aget v3, v3, v2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    .line 85
    iget-object v4, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->e:[I

    sget-object v5, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->d:[I

    aget v5, v5, v2

    aget v4, v4, v5

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 86
    new-instance v4, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment$2;-><init>(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    iget-object v4, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->f:[Landroid/widget/Switch;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()[I
    .locals 5

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "music_service_pref"

    const/4 v2, 0x4

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "user_ext"

    const-string v2, "0|0|0|0|0"

    .line 116
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "|"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 120
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    iget-object v4, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->e:[I

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v4, v2

    goto :goto_1

    .line 124
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->e:[I

    aput v0, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->e:[I

    return-object v0
.end method

.method public c()V
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->f:[Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->f:[Landroid/widget/Switch;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 134
    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setChecked(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->f:[Landroid/widget/Switch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->g:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->g:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathEarjack()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->e:[I

    aget v0, v0, v1

    .line 145
    iget-object v2, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->f:[Landroid/widget/Switch;

    aget-object v2, v2, v1

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 146
    iget-object v2, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->f:[Landroid/widget/Switch;

    aget-object v2, v2, v1

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 147
    iget-object v2, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->e:[I

    aput v0, v2, v1

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0b017e

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->f:[Landroid/widget/Switch;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->e:[I

    aget v2, v2, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->f:[Landroid/widget/Switch;

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->onAttach(Landroid/app/Activity;)V

    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->g:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/AbsLegacySoundAliveUserFragment;->onResume()V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->g:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->g:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathEarjack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;->f:[Landroid/widget/Switch;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance v1, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment$1;-><init>(Lcom/samsung/android/app/music/legacy/soundalive/settings/LegacySoundAliveUserSquareExtFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
