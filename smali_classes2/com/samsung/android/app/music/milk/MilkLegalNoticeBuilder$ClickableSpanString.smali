.class final Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$ClickableSpanString;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClickableSpanString"
.end annotation


# instance fields
.field private final a:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$ClickableSpanString;->a:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkLegalNoticeBuilder$ClickableSpanString;->a:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
