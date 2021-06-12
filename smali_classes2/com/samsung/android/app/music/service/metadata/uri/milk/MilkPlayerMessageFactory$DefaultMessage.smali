.class final Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$DefaultMessage;
.super Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultMessage"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 225
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$BaseMilkPlayerMessage;-><init>(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 226
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$DefaultMessage;->a:Landroid/app/Activity;

    return-void
.end method

.method static a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 213
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;-><init>(Landroid/os/Bundle;)V

    .line 214
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->setMessage(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;

    .line 215
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/AbsPlayerMessage$Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;
    .locals 1

    .line 219
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$DefaultMessage;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$DefaultMessage;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$DefaultMessage;->a:Landroid/app/Activity;

    const v1, 0x7f0b0261

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getPositiveText()Ljava/lang/CharSequence;
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/metadata/uri/milk/MilkPlayerMessageFactory$DefaultMessage;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
