.class public Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;
.super Landroid/support/v7/preference/SwitchPreferenceCompat;
.source "SourceFile"


# static fields
.field private static c:I


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008e

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->b:Landroid/app/ProgressDialog;

    .line 52
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->b:Landroid/app/ProgressDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 53
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->b:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0b0462

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;)Landroid/app/ProgressDialog;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->b:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c()Ljava/lang/String;
    .locals 5

    .line 115
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getSizeType(J)Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "CacheSizePreference"

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CacheSizeType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v2, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference$3;->a:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 128
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b04bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b04be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 122
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b04bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    const-string v0, "CacheSizePreference"

    const-string v2, "CacheSizeType null"

    .line 132
    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;)Ljava/lang/String;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;)Landroid/widget/TextView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 5

    const-string v0, "0"

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->getOnlineCacheSize(Landroid/content/Context;)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    sput v1, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->c:I

    .line 153
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->getSizeType(J)Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;

    move-result-object v1

    const-string v2, "CacheSizePreference"

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurCacheSize : mCacheSizeMB = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    .line 157
    sget-object v2, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference$3;->a:[I

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/MilkConstants$CacheSizeType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f0b038b

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 175
    :pswitch_0
    sget v0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->c:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b04bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    sget v3, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->c:I

    .line 179
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 178
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :pswitch_1
    sget v0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->c:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b04be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    sget v3, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->c:I

    .line 171
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 170
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :pswitch_2
    sget v0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->c:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b04bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    sget v3, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->c:I

    .line 163
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 162
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "CacheSizePreference"

    const-string v2, "getCurCacheSize : CacheSizeType null"

    .line 184
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/cache/CacheManager;->clearCache(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 96
    sput v0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->c:I

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->notifyChanged()V

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference$2;-><init>(Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "CacheSizePreference"

    const-string v1, "CacheSize Value null"

    .line 142
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    .line 70
    invoke-super {p0, p1}, Landroid/support/v7/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 72
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1301cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->a:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f1301ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    const v0, 0x3ecccccd    # 0.4f

    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 83
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/preference/CacheSizePreference$1;-><init>(Lcom/samsung/android/app/music/settings/preference/CacheSizePreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
