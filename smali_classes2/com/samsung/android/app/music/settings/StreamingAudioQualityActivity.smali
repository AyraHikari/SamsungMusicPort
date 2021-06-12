.class public Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;,
        Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

.field private d:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

.field private e:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    .line 83
    new-instance v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$1;-><init>(Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->h:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;)I
    .locals 2

    const-string v0, "milk_streaming_quality_mobile"

    .line 197
    sget-object v1, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;->WIFI:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v0, "milk_streaming_quality_wifi"

    .line 201
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private a()V
    .locals 2

    .line 187
    sget-object v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;->MOBILE:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a(Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->getQualityType(I)Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->c:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    .line 188
    sget-object v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;->WIFI:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a(Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->getQualityType(I)Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->d:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->c:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a(Landroid/view/View;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->d:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a(Landroid/view/View;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)V

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 327
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->b()V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->e:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;->showToast(I)V

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 1

    .line 333
    instance-of v0, p1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 334
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    const v0, 0x7f130073

    .line 335
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 336
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 337
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const v0, 0x7f0b03bb

    .line 338
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 339
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;)V
    .locals 2

    const v0, 0x7f130408

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->HIGH:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    invoke-direct {p0, v0, p2, v1}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a(Landroid/view/View;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)V

    const v0, 0x7f13040a

    .line 152
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->MIDDLE:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    invoke-direct {p0, v0, p2, v1}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a(Landroid/view/View;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)V

    const v0, 0x7f13040c

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->LOW:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a(Landroid/view/View;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)V

    return-void
.end method

.method private a(Landroid/view/View;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)V
    .locals 6

    const v0, 0x7f1303a2

    .line 157
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1303a3

    .line 158
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    .line 160
    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100fb

    aput v4, v2, v3

    const/4 v4, 0x0

    const v5, 0x1010074

    .line 161
    invoke-virtual {p0, v4, v2, v5, v3}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 163
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 164
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 165
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 168
    invoke-static {p3}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->access$100(Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/music/model/AudioQuality;->getAudioQualityResId(I)I

    move-result v2

    .line 169
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 170
    sget-object v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$2;->a:[I

    invoke-virtual {p3}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p3, 0x7f0b0096

    .line 178
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    const p3, 0x7f0b0097

    .line 175
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    const p3, 0x7f0b0095

    .line 172
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 182
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 183
    iget-object p2, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/view/View;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)V
    .locals 4

    const v0, 0x7f130408

    .line 239
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1303a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const v2, 0x7f13040a

    .line 241
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    const v3, 0x7f13040c

    .line 243
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    const/4 v1, 0x0

    .line 245
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 246
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 247
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 249
    sget-object v1, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$2;->a:[I

    invoke-virtual {p2}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 257
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 254
    :pswitch_1
    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 251
    :pswitch_2
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;I)V
    .locals 2

    const-string v0, "milk_streaming_quality_mobile"

    .line 228
    sget-object v1, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;->WIFI:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v0, "milk_streaming_quality_wifi"

    .line 232
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 233
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private a(Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)V
    .locals 3

    const-string v0, "StreamingAudioQualityActivity"

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectOptionItem - Network : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "Quality : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {p2}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->access$100(Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a(Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;I)V

    .line 209
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a(Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)V

    .line 211
    sget-object v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$2;->b:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 217
    :pswitch_0
    iput-object p2, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->d:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->b:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a(Landroid/view/View;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)V

    goto :goto_0

    .line 213
    :pswitch_1
    iput-object p2, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->c:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a(Landroid/view/View;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)V

    .line 222
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->b(Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)V
    .locals 2

    .line 306
    sget-object v0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->HIGH:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;

    if-ne p1, v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.samsung.radio.settings.STREAMING_AUDIO_QUALITY_NEXT_HIGHEST_AVAILABLE_IS_DISPLAYED"

    const/4 v1, 0x0

    .line 308
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b03bf

    .line 312
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a(I)V

    const-string v0, "com.samsung.radio.settings.STREAMING_AUDIO_QUALITY_NEXT_HIGHEST_AVAILABLE_IS_DISPLAYED"

    const/4 v1, 0x1

    .line 313
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a(Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 2

    .line 263
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private b()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->e:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->e:Lcom/samsung/android/app/musiclibrary/core/service/utility/ToastHandler;

    :cond_0
    return-void
.end method

.method private b(Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;)V
    .locals 3

    .line 268
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 269
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 271
    sget-object v2, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$2;->b:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "5252"

    goto :goto_0

    :pswitch_1
    const-string v0, "5251"

    .line 280
    :goto_0
    sget-object p1, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$2;->a:[I

    invoke-virtual {p2}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$QualityType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 288
    :pswitch_2
    sget-object p1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->LOW_AAC:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->getDetailValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 285
    :pswitch_3
    sget-object p1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->MIDDLE_192:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->getDetailValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 282
    :pswitch_4
    sget-object p1, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->HIGH_320:Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsDetail$AudioQuality;->getDetailValue()Ljava/lang/String;

    move-result-object v1

    .line 292
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string p2, "422"

    .line 293
    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "5251"

    .line 296
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "settings_streamingAudioQuality_mobile"

    goto :goto_2

    :cond_0
    const-string p1, "settings_streamingAudioQuality_wifi"

    .line 302
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 107
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04015a

    .line 109
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->setContentView(I)V

    .line 110
    invoke-direct {p0, p0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a(Landroid/app/Activity;)V

    const v0, 0x7f130405

    .line 112
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a:Landroid/view/View;

    const v0, 0x7f130407

    .line 113
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->b:Landroid/view/View;

    const v0, 0x7f130403

    .line 114
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130404

    .line 116
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->f:Landroid/view/ViewGroup;

    .line 117
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->f:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    const v2, 0x7f0f003a

    const/16 v3, 0xf

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->f:Landroid/view/ViewGroup;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    .line 119
    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 118
    invoke-interface {v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;->a(ILjava/lang/Integer;)V

    :cond_0
    const v1, 0x7f130406

    .line 121
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->g:Landroid/view/ViewGroup;

    .line 122
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->g:Landroid/view/ViewGroup;

    instance-of v1, v1, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->g:Landroid/view/ViewGroup;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    .line 124
    invoke-static {p0, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 123
    invoke-interface {v1, v3, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;->a(ILjava/lang/Integer;)V

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a:Landroid/view/View;

    sget-object v2, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;->MOBILE:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a(Landroid/view/View;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;)V

    .line 128
    iget-object v1, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->b:Landroid/view/View;

    sget-object v2, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;->WIFI:Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a(Landroid/view/View;Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity$NetworkType;)V

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a()V

    .line 132
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isEnableTelephony(Landroid/content/Context;)Z

    move-result v1

    .line 133
    iget-object v2, p0, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a:Landroid/view/View;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    .line 134
    :cond_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_4

    .line 137
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "422"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string p1, "StreamingAudioQualityActivity"

    const-string v0, "onRestoreInstanceState"

    .line 145
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/app/music/settings/StreamingAudioQualityActivity;->a()V

    return-void
.end method
