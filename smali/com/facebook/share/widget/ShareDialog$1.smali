.class synthetic Lcom/facebook/share/widget/ShareDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/ShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$facebook$share$widget$ShareDialog$Mode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 617
    invoke-static {}, Lcom/facebook/share/widget/ShareDialog$Mode;->values()[Lcom/facebook/share/widget/ShareDialog$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/share/widget/ShareDialog$1;->$SwitchMap$com$facebook$share$widget$ShareDialog$Mode:[I

    :try_start_0
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$1;->$SwitchMap$com$facebook$share$widget$ShareDialog$Mode:[I

    sget-object v1, Lcom/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v1}, Lcom/facebook/share/widget/ShareDialog$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$1;->$SwitchMap$com$facebook$share$widget$ShareDialog$Mode:[I

    sget-object v1, Lcom/facebook/share/widget/ShareDialog$Mode;->WEB:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v1}, Lcom/facebook/share/widget/ShareDialog$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/facebook/share/widget/ShareDialog$1;->$SwitchMap$com$facebook$share$widget$ShareDialog$Mode:[I

    sget-object v1, Lcom/facebook/share/widget/ShareDialog$Mode;->NATIVE:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v1}, Lcom/facebook/share/widget/ShareDialog$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
