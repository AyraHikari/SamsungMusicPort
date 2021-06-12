.class abstract Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;
.super Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseMilkPlayerMessage"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 174
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage;-><init>(Landroid/os/Bundle;)V

    .line 175
    iput-object p2, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->a:Landroid/app/Activity;

    return-void
.end method

.method private a()V
    .locals 3

    const-string v0, "MilkMessage"

    const-string v1, "releaseDormancyFlag"

    .line 203
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->releaseDormancyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MilkMessage"

    const-string v1, "releaseDormancyFlag - isDormancyMode is true"

    .line 205
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->a:Landroid/app/Activity;

    sget-object v1, Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;->INTERSTITIAL:Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/advertise/AdPopupActivity;->a(Landroid/content/Context;Lcom/samsung/android/app/music/advertise/AdConstants$ADPOPUP_TYPE;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .line 197
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 198
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public cancel()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->a()V

    return-void
.end method

.method public doNegative()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->a()V

    return-void
.end method

.method public doPositive()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;->a()V

    return-void
.end method
