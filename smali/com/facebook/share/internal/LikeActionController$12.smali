.class synthetic Lcom/facebook/share/internal/LikeActionController$12;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$facebook$share$widget$LikeView$ObjectType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1109
    invoke-static {}, Lcom/facebook/share/widget/LikeView$ObjectType;->values()[Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/share/internal/LikeActionController$12;->$SwitchMap$com$facebook$share$widget$LikeView$ObjectType:[I

    :try_start_0
    sget-object v0, Lcom/facebook/share/internal/LikeActionController$12;->$SwitchMap$com$facebook$share$widget$LikeView$ObjectType:[I

    sget-object v1, Lcom/facebook/share/widget/LikeView$ObjectType;->PAGE:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v1}, Lcom/facebook/share/widget/LikeView$ObjectType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
